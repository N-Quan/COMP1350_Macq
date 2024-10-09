-- Create following CTEs (Common Table Expression)
--	CTEs are just temporary tables, we use them to make queries easier to understand 

-- Create a table with all info on the foodstall AND their employees 
WITH foodstall_and_employees AS (
	SELECT FoodStallWorker.EmployeeID, FoodStallWorker.foodstallid, Foodstall.name
	FROM Foodstall
	JOIN FoodStallWorker on Foodstall.id=FoodStallWorker.foodstallid
), -- Create a table with a count of employees for each food stall
employeescount AS (
	Select FoodStallID, Count(*) as employeeCount
	FROM FoodStallWorker
	GROUP BY FoodStallID
)

-- employeescount table is almost our solution, except we need:
--		- the name of the foodstall
--		- get rid of the foodstallid
-- To achieve this, Join the two tables we created above
SELECT DISTINCT foodstall_and_employees.name, employeescount.employeeCount
FROM employeescount
JOIN foodstall_and_employees on foodstall_and_employees.FoodStallID=employeescount.FoodStallID
WHERE employeescount.employeeCount = 3