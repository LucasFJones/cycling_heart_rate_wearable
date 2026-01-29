# Analysis of wearable 

## Introduction to the problem

## Methods
Trial one was conducted using an indoor Peleton machine. Heart rate was monitored using three devices which were a Garmin chest strap, a Whoop 5.0 (right wrist), and an Apple Watch SE (left wrist). Data was automatically uploaded through Strava API's, then downloaded to local machine and processed in R v4.3. In short, data was matched using DATE/HOUR/MINUTE/SECOND format. Next data was plotted by time and compared heart rates across all devices.

Trial two was conducted on a road bicycle outside. Heart rate was monitored using three devices which were a Wahoo chest strap, a Whoop 5.0 (right wrist), and an Apple Watch SE (left wrist). Follwoing the same protocol as trial one, the data was automatically uploaded through Strava API's, then downloaded to local machine and processed in R v4.3. In short, data was matched using DATE/HOUR/MINUTE/SECOND format. Next data was plotted by time and compared heart rates across all devices.

## Results
Figure 1 ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/hr_plot.png)
Figure 2 ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/garmin_apple_plot.png)
Figure 3 ![whole](https://github.com/LucasFJones/cycling_heart_rate_wearable/blob/main/plots/garmin_whoop_plot.png)


## Discussion


#### Summary Data
| Wearable  | Average HR | Min HR | Max HR |
| ------------- | ------------- | ------------- | ------------- |
| Garmnin  | 145.39  |  94  | 180  |
| Whoop  | 143.84  | 77  | 176  |
| Apple  |  145.41 | 97  | 181  |



