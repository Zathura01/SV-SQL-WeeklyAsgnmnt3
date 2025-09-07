WITH task_rank AS (
  SELECT 
    doneBy,
    COUNT(*) AS total_tasks,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rnk
  FROM tasks
  GROUP BY doneBy
)
SELECT doneBy, total_tasks
FROM task_rank
WHERE rnk <= 2;
