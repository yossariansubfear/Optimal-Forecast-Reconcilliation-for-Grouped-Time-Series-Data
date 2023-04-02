install.packages("hts")
library(hts)

#reading the data and removing non-time series columns 
tour = read.csv("TourismData_v3.csv")
tour = tour[c(-1,-2)]

#converting data frame to a gts object
tour.gts = gts(tour, characters = list(c(1,1,1),c(3)))
summary(tour.gts)

#555 time series in total

#making base forecasts using ARIMA
baseFC = forecast(tour.gts, fmethod = "arima")

#making forecasts using OLS, WLS, and Trace Minimization models
OlsFC = forecast(tour.gts, method = "comb", weights = "ols")
WlsFC = forecast(tour.gts, method = "comb", weights = "wls")
MintFC = forecast(tour.gts, method = "comb", weights = "mint", covariance = "shr")

#calculating accuracy for OLS, WLS, and MinT with ARIMA model as base
accu_mint = accuracy(baseFC, MintFC)
accu_ols = accuracy(baseFC, OlsFC)
accu_wls = accuracy(baseFC, WlsFC)

#preparing a comparison table for model accuracies (based on the errors)
accu_compare = data.frame(OLS = accu_ols[,1], WLS = accu_wls[,1], MinT = accu_mint[,1])


