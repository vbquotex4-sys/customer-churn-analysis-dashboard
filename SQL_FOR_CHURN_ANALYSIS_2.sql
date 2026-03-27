create Database Customer_churn_Analysis

Use customer_churn_analysis

-- direct import did not work due to data type issues so create table manually and then imported the file

SELECT * INTO telco_churn
FROM [dbo].[WA_Fn-UseC_-Telco-Customer-Churn];
