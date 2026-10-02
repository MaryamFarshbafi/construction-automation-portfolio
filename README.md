# Construction Automation Data Analytics Portfolio

## Project Overview

This project demonstrates the use of Python and SQL to analyze construction project data with a focus on data quality, task tracking, progress reporting, and construction automation.

The project was designed to demonstrate skills relevant to construction automation and digital project execution, including:

- Construction data validation
- Data quality analysis
- SQL reporting
- Project progress tracking
- Dashboard-ready data preparation
- Construction task analysis
- Identification of overdue and outstanding work

## Technologies

- Python
- Pandas
- SQL
- SQLite
- Matplotlib
- Kaggle
- Google Colab
- GitHub

## Dataset

The analysis uses the **Construction and Project Management Example Data** dataset available through Kaggle.

The dataset contains construction task information including:

- Task reference
- Status
- Location
- Description
- Creation date
- Target
- Task type
- Work package
- Status change
- Association
- Overdue indicator
- Priority
- Cause
- Project
- Task group

The analysis focuses on the construction task dataset across multiple projects.

## Dataset Summary

The task dataset contains:

- **12,424 construction task records**
- **12,118 unique reference values**
- **8 projects**
- **0 exact duplicate rows**

## Data Quality Analysis

The dataset was evaluated for completeness, duplicates, reference consistency, and missing values.

Several fields contain substantial missing information:

| Field | Missing Records | Missing % |
|---|---:|---:|
| Priority | 10,058 | 80.96% |
| Target | 9,856 | 79.33% |
| Association | 2,941 | 23.67% |
| Cause | 2,741 | 22.06% |
| To Package | 1,042 | 8.39% |
| Documents | 644 | 5.18% |
| Comments | 522 | 4.20% |
| Images | 152 | 1.22% |
| Task Group | 50 | 0.40% |

Missing values were not automatically deleted because a missing value does not necessarily indicate an invalid construction record. Instead, missingness was analyzed and documented as a data-quality characteristic.

## SQL Analysis

The cleaned construction data was loaded into a SQLite database for reporting and analysis.

SQL queries were developed to analyze:

- Total construction tasks
- Tasks by status
- Tasks by project
- Overdue tasks
- Tasks by task group

Example:

```sql
SELECT
    Status,
    COUNT(*) AS total_tasks
FROM tasks
GROUP BY Status
ORDER BY total_tasks DESC;

