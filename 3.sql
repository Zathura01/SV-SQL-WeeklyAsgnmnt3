SELECT 
    t.id,
    t.taskName,
    t.projectId,
    t.dueDate
FROM tasks t
WHERE t.dueDate < (
    SELECT AVG(t2.dueDate)
    FROM tasks t2
    WHERE t2.projectId = t.projectId
);
