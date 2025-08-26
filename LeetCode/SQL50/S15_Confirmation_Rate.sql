/*Confirmation Rate*/
select s.user_id, ROUND(IFNULL(SUM(case when c.action = 'confirmed' then 1 else 0 END) / count(c.user_id), 0),2) as confirmation_rate from signups s left join confirmations c on s.user_id=c.user_id group by s.user_id;
