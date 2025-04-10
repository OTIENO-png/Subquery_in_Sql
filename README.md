# SQL Query: Retrieve IT Department Employees with Personal Details

This repository contains an SQL query designed to fetch employee data for individuals in the IT department, combining work-related information from the `Staffs_Data` table with personal details from the `Employee_Personal_Info` table.

---

## Query Purpose
The query retrieves the following details for **IT department employees**:
- Employee ID
- Department name
- Job designation
- Full name
- Email address
- Date of birth (DOB)
- Phone number

---

## Code Structure
```sql
SELECT  
    s.Employee_id_No,  
    s.Department_name,  
    s.Designation,
    e.Full_Name,
    e.Email,  
    e.DOB,  
    e.Phone_Number  
FROM  
    (SELECT * FROM Staffs_Data WHERE Department_name = 'IT') AS s  
INNER JOIN  
    Employee_Personal_Info e  
ON  
    s.Employee_id_No = e.Employee_id_No;
