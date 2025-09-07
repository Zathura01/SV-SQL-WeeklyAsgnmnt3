SELECT p.id, p.projectName, p.budget
FROM projects p
WHERE p.budget = (
    SELECT MAX(p2.budget)
    FROM projects p2
);
