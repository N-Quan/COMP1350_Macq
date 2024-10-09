WITH foodstall_and_employees AS (
	SELECT FoodStallWorker.EmployeeID, FoodStallWorker.foodstallid, Foodstall.name
	FROM Foodstall
	JOIN FoodStallWorker on Foodstall.id=FoodStallWorker.foodstallid
),
employeescount AS (
	Select FoodStallID, Count(*) as employeeCount
	FROM FoodStallWorker
	GROUP BY FoodStallID
)

SELECT DISTINCT foodstall_and_employees.name, employeescount.employeeCount
FROM employeescount
JOIN foodstall_and_employees on foodstall_and_employees.FoodStallID=employeescount.FoodStallID
WHERE employeescount.employeeCount = 3