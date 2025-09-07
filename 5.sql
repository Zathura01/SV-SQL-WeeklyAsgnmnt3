SELECT 
    p.projectName,
    COUNT(t.id) AS total_tasks,
    SUM(CASE WHEN t.status = 'completed' THEN 1 ELSE 0 END) AS completed_tasks,
    ROUND(
        (SUM(CASE WHEN t.status = 'completed' THEN 1 ELSE 0 END) / COUNT(t.id)) * 100,
        2
    ) AS completed_percentage
FROM projects p
JOIN tasks t ON p.id = t.projectId
GROUP BY p.id, p.projectName;
