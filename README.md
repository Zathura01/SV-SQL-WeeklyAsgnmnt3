1● Using a CTE, find projects along with the number of tasks assigned and number of 
completed tasks. Show project_name, total_tasks, completed_tasks. 
2● Write a query to find the top 2 team members with the highest number of tasks assigned 
across all projects. Use window functions (ROW_NUMBER() or RANK()). 
3● Using a correlated subquery, find tasks whose due_date is earlier than the average 
due_date of all tasks in the same project. 
4● Find the project(s) with the maximum budget using a subquery. 
5● Write a query that returns the percentage of completed tasks per project. Use aggregate 
filtering or FILTER clause if supported. 
6● Use a window function to show each task with its assigned_to, task_name, and the count 
of tasks assigned to that person, ordered by assigned_to. 
7● Find all tasks assigned to team leads where the task is not completed and due date is 
within the next 15 days from today. 
8● Write a query to list projects that have no tasks assigned yet (projects without any task 
records). 
9● You have an to create additional table Model_Training (training_id, project_id, 
model_name, accuracy, training_date). Write a query to list each project with its best 
(highest accuracy) AI model name and accuracy. 
10● You have to create additional table Data_Sets (dataset_id, project_id, dataset_name, 
size_gb, last_updated). Write a query to find all projects with datasets larger than 10GB 
that were updated within the last 30 days. 
