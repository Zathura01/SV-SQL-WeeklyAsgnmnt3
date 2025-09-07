SELECT 
    t.taskName,
    t.doneBy,
    t.status,
    t.dueDate,
    p.projectName
FROM tasks t
JOIN projects p ON t.projectId = p.id
JOIN teams tm ON t.doneBy = tm.individualName
WHERE tm.position = 'lead'          -- use 'position', not 'role'
  AND t.status <> 'completed'
  AND t.dueDate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 15 DAY);
