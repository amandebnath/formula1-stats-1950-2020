# Formula 1 Historical Data Analysis (1950–2020)

A comprehensive data engineering and analytics project transforming raw Formula 1 race data into actionable insights using a modern SQL-to-BI workflow.

**Data Source:** [FIA F1 1950-2019 Dataset (Kaggle)](https://www.kaggle.com/datasets/aadiltajani/fia-f1-19502019-data)

---

## 📄 Executive Summary

This project delivers an end-to-end data engineering and analytics solution for seven decades of Formula 1 historical data. By transforming raw Kaggle datasets into a high-performance **SQL Server 2025** environment, I built a scalable pipeline that handles millions of records with sub-second latency. Key achievements include automating complex ETL workflows via **PowerShell**, optimizing storage through **Columnstore Indexing**, and engineering an interactive **Power BI** suite that uncovers deep insights into driver performance and constructor trends from 1950 to 2020.

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
