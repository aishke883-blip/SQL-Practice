/*Managers with at Least 5 Direct Reports*/
select e1.name from employee e1 where e1.id in (select e2.managerId from employee e2 where e2.managerId is not null group by e2.managerID having count(*)>=5 );
