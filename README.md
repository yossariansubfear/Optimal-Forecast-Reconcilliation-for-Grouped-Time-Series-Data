# Optimal-Forecast-Reconcilliation-for-Grouped-Time-Series-Data
Aggregating Forecasts For Grouped Time-Series Data Using Trace Minimization (MinT) Approach


## Forecast Reconciliation :

1. Process of adjusting forecasts to make them coherent.
2. The Algorithm is based on generalized least squares estimator that requires an
  estimate of the covariance matrix of coherency errors.
3. Hyndman et al. proposed a solution to the problem of likely incoherent set of
  forecasts using least squares reconciliation .
4. Hyndman et al. also suggested that weighted least squares (WLS) taking into account
  on the diagonal of the variance-covariance matrix but ignoring the off-diagonal
  covariance elements.
5. Our approach is to extend work of Hyndman et al. to frame the problem in terms of
  finding a set of minimum variance unbiased estimates of future values of all time
  series across the entire collection.
6. This approach is called MinT(minimum trace) reconciliation which has an
  important feature which results in unique analytical solution of incorporating
  information about the correlation structure of the collection.

## Hierarchical Forecasting :

1. Process of generating coherent forecasts or reconciling incoherent forecasts .
2. Allows individual time series to be forecasted individually.
3. Simultaneously preserving the relationship within hierarchy.
4. Arises due to geographic divisions.

  Eg: Total Bicycle sales can be disaggregated by country , then within each country by
  state ,within each state by region and so on till the outlet level.
