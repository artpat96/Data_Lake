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
* Creating a connection from Athena to PowerBI and visualisation of analyzed data
