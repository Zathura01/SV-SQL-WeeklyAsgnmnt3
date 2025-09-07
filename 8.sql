SELECT 
    p.id,
    p.projectName,
    p.des,
    p.startDate,
    p.endDate,
    p.budget
FROM projects p
LEFT JOIN tasks t ON p.id = t.projectId
WHERE t.id IS NULL;
