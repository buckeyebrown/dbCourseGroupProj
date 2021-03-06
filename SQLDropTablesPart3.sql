/** Remove FK Constraints */
ALTER TABLE [dbo].[HOME_INSURANCE_POLICY] DROP CONSTRAINT [FK__HOME_INSU__accou__2B3F6F97]
ALTER TABLE [dbo].[CLIENT] DROP CONSTRAINT [FK__CLIENT__employee__182C9B23]
ALTER TABLE [dbo].[CAR_INSURANCE_POLICY] DROP CONSTRAINT [FK__CAR_INSUR__accou__2F10007B]
ALTER TABLE [dbo].[BOAT_INSURANCE_POLICY] DROP CONSTRAINT [FK__BOAT_INSU__accou__32E0915F]
ALTER TABLE [dbo].[ACCOUNTS] DROP CONSTRAINT [FK__ACCOUNTS__client__239E4DCF]

/**
* Drop all the tables
*/

DROP TABLE ACCIDENT_HISTORY
DROP TABLE ACCOUNTS
DROP TABLE ACCOUNTS_SOLD
DROP TABLE BOAT_INSURANCE_POLICY
DROP TABLE BOATS
DROP TABLE BROKERS
DROP TABLE CAR_INSURANCE_POLICY
DROP TABLE CLIENT
DROP TABLE Client_Audit
DROP TABLE Companies_Brokers
DROP TABLE DEPENDENTS
DROP TABLE EMPLOYEES
DROP TABLE HOME_INSURANCE_POLICY
DROP TABLE HOMES
DROP TABLE INSURANCE_COMPANY
DROP TABLE LAWYERS
DROP TABLE Past_Clients
DROP TABLE PAYMENT
DROP TABLE Policies_Written
DROP TABLE VEHICLES