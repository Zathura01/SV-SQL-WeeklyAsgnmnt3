WITH task_counts AS (
  SELECT 
    projectId,
    COUNT(*) AS total_tasks,
    SUM(CASE WHEN status = 'completed' THEN 1 ELSE 0 END) AS completed_tasks
  FROM tasks
  GROUP BY projectId
)
SELECT 
  p.projectName,
  tc.total_tasks,
  tc.completed_tasks
FROM projects p
JOIN task_counts tc ON p.id = tc.projectId;
