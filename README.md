# Analysis of wearable 

## Introduction to the problem
Recent advancements in technological hardware and software have led to humans monitoring multiple health related metrics. Devices such as Whoop and Apple watches are used for continuous monitoring of heart rate, sleep and exercises. These devices calculate physical strain on your body with algorithms heavily weighted by heart rate. Thus, it is imperative to have accurate heart rate readings throughout a workout to ensure the most accurate strain scores are calculated. Here, I conducted multiple trails with different heart rate monitors (Whoop, Apple watch, Wahoo, Garmin), and compared them across exercises. To ensure analysis focused on high cardiovascular intensity, I only used cycling activities that exceeded zone 3. I hypothesize that the chest strap monitors will be the most accurate (Wahoo, Garmin), due to the devices proximity to the heart.

## Methods
Trial one was conducted using an indoor Peleton machine. Heart rate was monitored using three devices which were a Garmin chest strap, a Whoop 5.0 (right wrist), and an Apple Watch SE (left wrist). Data was automatically uploaded through Strava API's, then downloaded to local machine and processed in R v4.3. In short, data was matched using DATE/HOUR/MINUTE/SECOND format. Next data was plotted by time and compared heart rates across all devices.

Trial two was conducted on a road bicycle outside. Heart rate was monitored using three devices which were a Wahoo chest strap, a Whoop 5.0 (right wrist), and an Apple Watch SE (left wrist). Follwoing the same protocol as trial one, the data was automatically uploaded through Strava API's, then downloaded to local machine and processed in R v4.3. In short, data was matched using DATE/HOUR/MINUTE/SECOND format. Next data was plotted by time and compared heart rates across all devices.

## Results
Table 1. Summary data from trial 1.
| Wearable  | Average HR | Min HR | Max HR |
| ------------- | ------------- | ------------- | ------------- |
| Garmnin  | 145.39  |  94  | 180  |
| Whoop  | 143.84  | 77  | 176  |
| Apple  |  145.41 | 97  | 181  |

Figure 1. Heart rate data from all three devices from trial one. The second x-axis corresponds to power data monitored on the Peleton machine ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/hr_plot.png)
Figure 2. (a) Comparison between Garmin and Apple devices (b) Comparison between Garmin and Whoop devices in trial one. ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/trial1_2panel_plot.png)

Table 2. Summary data from trial 2.
| Wearable  | Average HR | Min HR | Max HR |
| ------------- | ------------- | ------------- | ------------- |
| Wahoo  | 149.20  |  118  | 173  |
| Whoop  | 145.39  | 93  | 169  |
| Apple  |  151.81 |  96 |  176 |

Figure 3. Heart rate data from all three devices from trial two. ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/trial2_hr_plot.png)
Figure 4. a) Comparison between Garmin and Apple devices (b) Comparison between Garmin and Whoop devices in trial two. ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/trial2_2panel_plot.png)

## Discussion
Overall, through two trials it was revealed that the Whoop may report slightly lower heart rate when compared to Apple watches or chest strap (Garmin or Wahoo). However, it should be noted that Whoop in both trials was worn on right wrist, which should be investigated as an effect (further from heart). Specifically for exercise monitoring, chest strap devices (Garmin or Wahoo) may be the most accurate and cost effective. However, Whoop has added benefits of sleep tracking and stress monitoring, which can be considered for overall health.



