# Data Lake

<b>Project range and description</b>

The goal of the following project was to create a Data Lake and to process the data accordingly, structure it and use it for basic analysis.
The next step was creating a Data Warehouse from the obtained data to enable further, more complex analysis.

This project consists of the following steps:
* Downloading unstructured data in various formats (CSV, JSON) and creating a Data Lake from it in S3
* Writing Python script to convert JSON file into CSV and to import them to one folder
* Creating proper roles in AWS and Database in AWS Glue
* Creating Table using Crawler to identify data and create schemas
* Using Glue to perform ETL Job to convert files into ORC format (conversion to column format for increased efficiency of relevant queries)
* Analyzing data from S3 using AWS Athena
* Creating a connection from AWS S3 to Snowflake
* Creating DWH in Snowflake and insert there data from our S3 folder (copied to sql file and uploaded into repository)
* Creating a connection from Athena to QuickSight and visualisation of analyzed data


<b> Examples:</b>
- ETL Job in Glue to transform data into ORC format and get rid of unnecessary columns
![glue_job](https://github.com/artpat96/Data_Lake/assets/111128309/003f614b-86ed-43e2-8b22-06968014d59c)

Scripts to transofrm JSON into CSV file, connecting S3 to Snowflake and queries done in Athena are attached in the repository


<b>Visualisations:</b>
- Average points by countries
  ![avg_points_by_countries](https://github.com/artpat96/Data_Lake/assets/111128309/fbf8796c-a760-40f9-9000-ee0c9961cda9)

- Wines produced by countries
  ![b_wines_by_countires](https://github.com/artpat96/Data_Lake/assets/111128309/eceb8345-df8c-450f-b348-e448f6a4e1c4)

- Highest avg points by variety
  ![c_highest_avg_by_variety](https://github.com/artpat96/Data_Lake/assets/111128309/0e05f5bd-e648-4f93-92bb-a2458b5406d7)

- Wines and prices by region
  ![d_wines_and_avgprices_by_region](https://github.com/artpat96/Data_Lake/assets/111128309/b7d56332-f189-4e42-babf-a04d703a2c31)

- Highest prices by region
  ![e_max_price_by_region](https://github.com/artpat96/Data_Lake/assets/111128309/d4b36a50-f18e-42f1-b436-30c05f11d7c4)

- Most expensive wineries
  ![f_most_expens_wineries](https://github.com/artpat96/Data_Lake/assets/111128309/ea618d7f-5622-45d1-9c65-c4a82c2d8250)


Dataset: https://www.kaggle.com/datasets/zynicide/wine-reviews
