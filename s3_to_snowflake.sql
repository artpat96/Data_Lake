// Create integration object
CREATE OR REPLACE STORAGE integration s3_int
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = S3
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::119613279016:role/snowflake-access'
    STORAGE_ALLOWED_LOCATIONS = ('s3://wines-project-datalake/reviews/data/wines-csv/')

// Description to connect it with AWS through role
DESC integration s3_int;

CREATE OR REPLACE TABLE wines (
    country STRING,
    points INT,
    price INT,
    province STRING,
    region STRING,
    variety STRING,
    winery STRING)

// Create file format object
CREATE OR REPLACE file format fileformat_wines
    type = csv
    field_delimiter = ';'
    skip_header = 1
    null_if = ('NULL','null')
    empty_field_as_null = TRUE

// Create stage object with integration object and fileformat obj
CREATE OR REPLACE stage wines_csv_stage
    URL = 's3://wines-project-datalake/reviews/data/wines-csv/'
    STORAGE_INTEGRATION = s3_int
    FILE_FORMAT = fileformat_wines

// Data loading
COPY INTO wines
    FROM @wines_csv_stage
    ON_ERROR = 'continue';
    
SELECT * FROM wines;