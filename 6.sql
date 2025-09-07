SELECT 
    t.doneBy,
    t.taskName,
    COUNT(*) OVER (PARTITION BY t.doneBy) AS total_tasks_assigned
FROM tasks t
ORDER BY t.doneBy, t.taskName;
