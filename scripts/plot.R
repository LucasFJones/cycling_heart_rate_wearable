library(FITfileR)
library(dplyr)
library(xml2)
library(lubridate)
library(ggplot2)

apple_fit_data <- readFitFile("~/Downloads/Lunch_Ride_apple.fit")
apple_records <- records(apple_fit_data)
apple_workout_df <- bind_rows(apple_records)
apple_hr_data <- apple_workout_df %>%
  select(timestamp, heart_rate) %>%
  filter(!is.na(heart_rate)) # Removes any rows where Whoop lost heart rate signal

whoop_fit_data <- readFitFile("~/Downloads/Lunch_Workout_whoop.fit")
whoop_records <- records(whoop_fit_data)
whoop_workout_df <- bind_rows(whoop_records)
whoop_hr_data <- whoop_workout_df %>%
  select(timestamp, heart_rate) %>%
  filter(!is.na(heart_rate)) # Removes any rows where Whoop lost heart rate signal

garmin_fit_data <- read_xml("~/Downloads/Peloton_21_min_Just_Ride.tcx")
xml_ns_strip(garmin_fit_data)
trackpoints <- xml_find_all(garmin_fit_data, "//Trackpoint")

garmin_hr_power <- data.frame(
  timestamp = ymd_hms(xml_text(xml_find_first(trackpoints, ".//Time"))),
  heart_rate = as.numeric(xml_text(xml_find_first(trackpoints, ".//HeartRateBpm/Value"))),
  watts = as.numeric(xml_text(xml_find_first(trackpoints, ".//Watts"))) 
)

garmin_ready <- garmin_hr_power %>% 
  filter(!is.na(heart_rate) & !is.na(watts)) %>% 
  mutate(device = "Garmin")

whoop_ready <- whoop_hr_data %>%
  rename(bpm = heart_rate) %>%
  mutate(device = "Whoop")

apple_ready <- apple_hr_data %>%
  rename(bpm = heart_rate) %>%
  mutate(device = "Apple_Watch")

all_hr_data <- bind_rows(whoop_ready, apple_ready, garmin_ready)

plot_data <- all_hr_data %>%
  filter(timestamp >= ymd_hms("2026-01-25 16:11:28") & 
           timestamp <= ymd_hms("2026-01-25 16:32:34"))


garmin_ready <- garmin_hr_power %>% 
  rename(bpm = heart_rate) %>%  # <--- Added this line
  filter(!is.na(bpm) & !is.na(watts)) %>% 
  mutate(device = "Garmin")

# Re-run your combine and filter steps:
all_hr_data <- bind_rows(whoop_ready, apple_ready, garmin_ready)

plot_data <- all_hr_data %>%
  filter(timestamp >= ymd_hms("2026-01-25 16:11:28") & 
           timestamp <= ymd_hms("2026-01-25 16:32:34"))

offset <- 95
scale_factor <- 80 / 310 

ggplot(plot_data, aes(x = timestamp)) +
  geom_area(aes(y = (watts * scale_factor) + offset), fill = "grey70", alpha = 0.3) +
  geom_line(aes(y = (watts * scale_factor) + offset), color = "grey50", alpha = 0.5, linewidth = 0.5) +
  geom_line(aes(y = bpm, color = device), linewidth = 0.8, alpha = 0.7) +
  scale_color_manual(
    values = c("Apple_Watch" = "#E03C31",  
               "Garmin" = "#007CC3",       
               "Whoop" = "#2D2D2D")) +
    scale_y_continuous(
    name = "Heart Rate (BPM)",
    sec.axis = sec_axis(~ (. - offset) / scale_factor, name = "Power (Watts)")) +
    coord_cartesian(ylim = c(95, 178)) +
  labs(
    title = "Heart Rate vs. Power Output",
    subtitle = "HR scaled 95-175 BPM | Power scaled 0-330 Watts",
    x = "Time",
    color = "Device" ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    legend.position = "bottom",
    axis.title.y.right = element_text(color = "grey50", face = "bold")) 
