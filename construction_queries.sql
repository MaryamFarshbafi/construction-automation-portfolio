
-- Construction Automation Portfolio
-- SQL queries for construction task tracking and reporting


-- Query 1: Total number of tasks
SELECT COUNT(*) AS total_tasks
FROM tasks;


-- Query 2: Number of tasks by status
SELECT
    Status,
    COUNT(*) AS total_tasks
FROM tasks
GROUP BY Status
ORDER BY total_tasks DESC;


-- Query 3: Number of tasks by project
SELECT
    project,
    COUNT(*) AS total_tasks
FROM tasks
GROUP BY project
ORDER BY total_tasks DESC;


-- Query 4: Number of overdue tasks by status
SELECT
    Status,
    COUNT(*) AS overdue_tasks
FROM tasks
WHERE OverDue = 1
GROUP BY Status
ORDER BY overdue_tasks DESC;


-- Query 5: Number of tasks by task group
SELECT
    "Task Group",
    COUNT(*) AS total_tasks
FROM tasks
GROUP BY "Task Group"
ORDER BY total_tasks DESC;
