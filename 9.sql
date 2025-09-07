SELECT 
    p.id AS projectId,
    p.projectName,
    mt.modelName,
    mt.accuracy
FROM projects p
JOIN Model_Training mt ON p.id = mt.projectId
WHERE mt.accuracy = (
    SELECT MAX(mt2.accuracy)
    FROM Model_Training mt2
    WHERE mt2.projectId = p.id
);
