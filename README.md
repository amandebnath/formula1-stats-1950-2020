# Formula 1 Historical Data Analysis (1950–2020)

A comprehensive data engineering and analytics project transforming raw Formula 1 race data into actionable insights using a modern SQL-to-BI workflow.

**Data Source:** [FIA F1 1950-2019 Dataset (Kaggle)](https://www.kaggle.com/datasets/aadiltajani/fia-f1-19502019-data)

---

## 🚀 Project Overview
This project focuses on the ETL (Extract, Transform, Load) process and visualization of seven decades of Formula 1 racing. I implemented a high-performance database schema to handle millions of data points, ensuring the final Power BI dashboard remains responsive and insightful.

## 🛠️ Tech Stack
* **Database:** Microsoft SQL Server 2025
* **ETL:** Windows PowerShell ISE & DBA Tools
* **Optimization:** Clustered Columnstore Indexing
* **BI & Visualization:** Power BI

## ⚡ Technical Highlights
* **High-Speed Ingestion:** Utilized PowerShell automation to bulk-import CSV data directly into SQL Server tables.
* **Query Optimization:** Applied **Clustered Columnstore Indexes** to significantly reduce storage footprint and decrease query latency for analytical workloads.
* **Data Modeling:** Created a robust semantic layer via SQL Views to handle unit conversions, data cleaning, and relationship mapping.
* **Dashboarding:** Designed an interactive UI featuring dynamic filtering by driver, team, and season, alongside performance trend analysis.

---

## 📊 Dashboard Preview

| Dashboard Overview | Driver Performance |
| :---: | :---: |
| ![Tabular Stats](https://github.com/amandebnath/formula1-stats-1950-2020/blob/main/screenshots/Tabular.png) | ![Graphical Stats](https://github.com/amandebnath/formula1-stats-1950-2020/blob/main/screenshots/Graphical.png) |


---

## ⚙️ Setup & Execution
1.  **Ingestion:** Use the PowerShell scripts to load the CSV files into a SQL Server database.
2.  **Transformation:** Execute the SQL scripts to generate the reporting views.
3.  **Optimization:** Apply Columnstore index scripts to the results and lap times tables for performance.
4.  **Reporting:** Connect Power BI to the SQL Views and refresh the data model.
