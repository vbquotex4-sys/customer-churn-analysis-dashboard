-- found and corrected null values

SELECT
  COUNT(*) AS total_rows,

  COUNT(*) - COUNT(customerID) AS customerID_nulls,
  COUNT(*) - COUNT(gender) AS gender_nulls,
  COUNT(*) - COUNT(SeniorCitizen) AS SeniorCitizen_nulls,
  COUNT(*) - COUNT(Partner) AS Partner_nulls,
  COUNT(*) - COUNT(Dependents) AS Dependents_nulls,
  COUNT(*) - COUNT(tenure) AS tenure_nulls,
  COUNT(*) - COUNT(PhoneService) AS PhoneService_nulls,
  COUNT(*) - COUNT(MultipleLines) AS MultipleLines_nulls,
  COUNT(*) - COUNT(InternetService) AS InternetService_nulls,
  COUNT(*) - COUNT(OnlineSecurity) AS OnlineSecurity_nulls,
  COUNT(*) - COUNT(OnlineBackup) AS OnlineBackup_nulls,
  COUNT(*) - COUNT(DeviceProtection) AS DeviceProtection_nulls,
  COUNT(*) - COUNT(TechSupport) AS TechSupport_nulls,
  COUNT(*) - COUNT(StreamingTV) AS StreamingTV_nulls,
  COUNT(*) - COUNT(StreamingMovies) AS StreamingMovies_nulls,
  COUNT(*) - COUNT(Contract) AS Contract_nulls,
  COUNT(*) - COUNT(PaperlessBilling) AS PaperlessBilling_nulls,
  COUNT(*) - COUNT(PaymentMethod) AS PaymentMethod_nulls,
  COUNT(*) - COUNT(MonthlyCharges) AS MonthlyCharges_nulls,
  COUNT(*) - COUNT(TotalCharges) AS TotalCharges_nulls,
  COUNT(*) - COUNT(Churn) AS Churn_nulls

FROM telco_churn;


SELECT *
FROM telco_churn
WHERE TotalCharges = '' OR TotalCharges IS NULL;

UPDATE telco_churn
SET TotalCharges = NULL
WHERE TotalCharges = '';

UPDATE telco_churn
SET TotalCharges = 0
WHERE TotalCharges IS NULL AND tenure = 0;

