SELECT 
    p.id AS project_id,
    p.projectName,
    d.datasetName,
    d.sizeGb,
    d.lastUpdated
FROM projects p
JOIN data_sets d ON p.id = d.projectId
WHERE d.sizeGb > 10
  AND d.lastUpdated >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);
