/*Replace Employee ID With The Unique Identifier*/
select unique_id, name from employees left join employeeUNI on employees.id=employeeUNI.id;
