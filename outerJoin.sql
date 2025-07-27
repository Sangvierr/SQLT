select /*+ leading(d) use_hash(e) */ d.DEPARTMENT_ID, d.DEPARTMENT_NAME, e.LAST_NAME, e.SALARY
from DEPARTMENTS d, EMPLOYEES e
where d.DEPARTMENT_ID(+) = e.DEPARTMENT_ID
and d.LOCATION_ID(+) = 1700;

select *
from DEPARTMENTS;

select column_name, num_distinct, density
from user_tab_col_statistics
where table_name = 'DEPARTMENTS'
;

select /*+ swap_join_inputs(d) leading(d) use_hash(e) */ d.DEPARTMENT_ID, d.DEPARTMENT_NAME, e.LAST_NAME, e.SALARY
from DEPARTMENTS d, EMPLOYEES e
where d.DEPARTMENT_ID(+) = e.DEPARTMENT_ID
  and d.LOCATION_ID(+) = 1700;


select c.CUST_ID, c.CUST_LAST_NAME, c.CUST_CITY, c.CUST_CREDIT_LIMIT, s.PROD_ID, s.TIME_ID, s.QUANTITY_SOLD
from CUSTOMERS c, SALES s
where c.CUST_ID = s.CUST_ID
and c.CUST_CITY = 'Los Angeles'
and c.CUST_CREDIT_LIMIT > 3000
and s.TIME_ID between to_date('1999/01/01', 'YYYY/MM/DD') and to_date('1999/12/31', 'YYYY/MM/DD');