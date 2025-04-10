SELECT  
s.Employee_id_No,  
s.Department_name,  
s.Designation,
e.Full_Name ,
e.Email,  
e.DOB,  
e.Phone_Number
FROM  
    (SELECT * FROM Staffs_Data WHERE Department_name = 'IT') AS s  
INNER JOIN  
    Employee_Personal_Info e  
ON  
    s.Employee_id_No = e.Employee_id_No;
