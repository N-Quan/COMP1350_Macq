-- Create following CTEs (Common Table Expression)
--	CTEs are just temporary tables, we use them to make queries easier to understand 

-- a. Create a table with all info on the foodstall AND their employees 
WITH foodstall_and_employees AS (
	SELECT FoodStallWorker.EmployeeID, FoodStallWorker.foodstallid, Foodstall.name
	FROM Foodstall
	JOIN FoodStallWorker on Foodstall.id=FoodStallWorker.foodstallid
), -- b. Create a table with a count of employees for each food stall
employees_count_table AS (
	Select FoodStallID, Count(*) as employeeCount
	FROM FoodStallWorker
	GROUP BY FoodStallID
)

-- c. employees_count_table table is almost our solution, except we need:
--		- the name of the foodstall
--		- get rid of the foodstallid
-- To achieve this, Join the two tables we created above
SELECT DISTINCT foodstall_and_employees.name, employees_count_table.employeeCount
FROM employees_count_table
JOIN foodstall_and_employees on foodstall_and_employees.FoodStallID=employees_count_table.FoodStallID
WHERE employees_count_table.employeeCount = 3