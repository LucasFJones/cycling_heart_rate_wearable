# Analysis of wearable 

## Introduction to the problem
Recent advancements in technological hardware and software have led to humans monitoring multiple health related metrics. Devices such as Whoop and Apple watches are used for continuos monitoring of heart rate, sleep and exercises. These devices calculate physical strain on your body with algorithms heavily weighted by heart rate. Thus, it is imparative to have accurate heart rate readings thoughout a work out to ensure the most accurate strain scores are calculated. Here, I conducted multiple trails with different heart rate monitors (Whoop, Apple watch, Wahoo, Garmin), and compared them across exercises. To ensure work outs were high cardio, I only used cycling activities that exceeded zone 3. I hypothesize that the chest strap monitors will eb the most accurate (Wahoo, Garmin), due to the devices proximity to the heart.

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
Figure 2. Comparison between Garmin and Apple devices. ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/garmin_apple_plot.png)
Figure 3. Comparison between Garmin and Whoop devices.  ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/garmin_whoop_plot.png)


## Discussion


#### Summary Data




