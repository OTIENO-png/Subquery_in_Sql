SELECT
    s.Employee_id_No,
    s.Department_name,
    s.Designation,
    e.Full_Name,
    e.Email,
    e.Birth_year,
    e.Phone_Number,
    CASE 
        WHEN s.Employee_id_No IN (SELECT Employee_id_No FROM Employee_Data WHERE Designation IS NULL OR s.Employee_id_No IS NULL OR s.Department_name IS NULL) THEN 'Not onboarded'
        ELSE 'Fully onboarded'
    END AS Work_status
FROM Staffs_Data s
RIGHT JOIN Employee_Personal_Info e
ON s.Employee_id_No = e.Employee_id_No
ORDER BY s.Employee_id_No DESC;
