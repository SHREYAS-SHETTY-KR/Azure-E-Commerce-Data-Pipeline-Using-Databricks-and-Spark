# Azure-E-Commerce-Data-Pipeline-Using-Databricks-and-Spark

This project demonstrates an end-to-end data pipeline for processing E-Commerce data using Microsoft Azure services. The pipeline includes data ingestion, processing, storage, and visualization. The architecture leverages Azure Data Factory for ingestion, Databricks for processing, Delta Lake for data storage, and Power BI, Tableau, or Looker Studio for data visualization. This design provides scalability, flexibility, and efficient data management for analytics and reporting.

![Screenshot 2024-08-31 192202](https://github.com/user-attachments/assets/8f44258d-247c-439f-a096-8912e62b6eda)


## Technologies Used

- **Azure Data Factory**: Data ingestion and pipeline orchestration
- **Azure Databricks**: Data processing using Apache Spark
- **Azure Data Lake Storage (ADLS) Gen2**: Data storage for different stages (Bronze, Silver, Gold)
- **Delta Lake**: Data format for efficient storage and processing
- **Power BI / Tableau / Looker Studio**: Optional tools for data visualization
- **Azure Synapse Analytics**: Optional advanced analytics platform

## Pipeline Overview

### Data Ingestion

- **Data Source**: E-Commerce data from [data.world](https://data.world/jfreex/e-commerce-users-of-a-french-c2c-fashion-store)
- **Ingestion Tool**: Azure Data Factory
- **Landing Zone-1**: Azure Data Lake Storage (ADLS) Gen2, where raw data is initially stored.

### Data Processing

- **Processing Engine**: Apache Spark on Azure Databricks
- **Layers**:
  - **Bronze**: Raw data in Parquet format from ADLS
  - **Silver**: Cleaned and transformed data
  - **Gold**: Final, curated dataset ready for reporting and analytics

### Data Storage

- **Storage Layer**: Azure Data Lake Storage (ADLS) Gen2
- **Data Format**: Delta Lake format for efficient processing and storage

### Data Visualization

- **Optional Tools**: Power BI, Tableau, Looker Studio for creating dashboards and reports
- **Advanced Analytics**: Azure Synapse Analytics can be used for further analytics or warehousing

## Project Visuals

<div align="center">

<table>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/e24c061f-b549-41ce-b7d0-77356b1b259a" alt="Screenshot 2024-08-30 233457" width="300"/></td>
    <td><img src="https://github.com/user-attachments/assets/01de6b8f-e325-4cb0-8791-f41ec1a2c266" alt="Screenshot (63)" width="300"/></td>
    <td><img src="https://github.com/user-attachments/assets/246c7cff-f552-4ec4-ad99-83ee408a26e6" alt="Screenshot 2024-08-27 194552" width="300"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/e99b0350-1bcf-4b4d-a31f-d06dbaf729cf" alt="Screenshot (65)" width="300"/></td>
    <td><img src="https://github.com/user-attachments/assets/01a3cb12-b62b-4e01-80b7-71b10cc49639" alt="Screenshot 2024-08-30 233522" width="300"/></td>
    <td><img src="https://github.com/user-attachments/assets/dc646e29-25c6-4f37-bc39-61d139197ef3" alt="Screenshot 2024-08-30 233745" width="300"/></td>
  </tr>
</table>

</div>

<table>
    <td>
      <p><a href="https://github.com/user-attachments/assets/db743b45-d7ca-4322-a6e4-ba0980d01d10"></a></p>
    </td>
    <td>
      <p><a href="https://github.com/user-attachments/assets/8e898119-33f3-44e5-bccc-f76125a7e3f1"></a></p>
    </td>
</table>



## Project Execution Flow

1. **Data Ingestion**:
   - Azure Data Factory pipelines are used to copy data from `data.world` to a landing zone in ADLS Gen2.
   - Pipeline-1 is triggered when new data arrives in Landing Zone-1. It converts the raw data from CSV to Parquet format and stores it in Landing Zone-2.

2. **Data Processing**:
   - **Bronze Layer**: Raw data from ADLS is processed in Databricks using Apache Spark. Initial cleaning and transformations are applied.
   - **Silver Layer**: Further cleaning and transformations are done to prepare intermediate datasets.
   - **Gold Layer**: Final datasets are created by combining Silver data, performing necessary aggregations, and storing the processed data in Delta format.

3. **Data Storage**:
   - Data is stored as Delta Lake tables in Azure Data Lake.
   - The final data (Gold Layer) is ready for visualization or further analytics.

4. **Data Serving and Visualization**:
   - Optionally, the processed data can be loaded into Power BI, Tableau, or Looker Studio for creating dashboards.
   - Azure Synapse Analytics can be integrated for advanced analytics and warehousing.

## Project Tree

```plaintext
E-Commerce Data Pipeline/
├── Azure Data Factory/
│   ├── Pipeline-1: Data Ingestion and Conversion
│   └── Pipeline-2: Trigger Databricks for Data Processing
├── Azure Databricks/
│   ├── Notebooks for Data Transformation
│   └── SQL Queries for Analytical Processing
├── ADLS Gen2/
│   ├── Landing Zone-1: Raw Data
│   ├── Landing Zone-2: Processed Data in Parquet
│   ├── Processed Data: Delta Format
│   └── Archive: Backup of Raw Data
├── Visualization/
│   ├── Power BI Dashboards
│   ├── Tableau Dashboards
│   └── Looker Studio Dashboards
└── Azure Synapse Analytics (Optional)
```


## Conclusion

This architecture provides a robust, scalable, and flexible solution for processing and analyzing large-scale E-Commerce data using Azure services. The modular pipeline design allows for seamless integration with additional tools like Synapse Analytics for advanced analytics or Power BI for real-time dashboards. With the use of Delta Lake, the pipeline offers improved performance and data management, making it an ideal solution for modern data engineering needs.
