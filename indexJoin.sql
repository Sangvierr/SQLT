select d.DEPARTMENT_ID, d.DEPARTMENT_NAME, e.LAST_NAME, e.SALARY
from DEPARTMENTS d, EMPLOYEES e
where d.DEPARTMENT_ID = e.DEPARTMENT_ID
;

select /*+ leading(d) use_nl(e) */
    d.DEPARTMENT_ID, d.DEPARTMENT_NAME, e.LAST_NAME, e.SALARY
from DEPARTMENTS d, EMPLOYEES e
where d.DEPARTMENT_ID = e.DEPARTMENT_ID
;

select d.department_id, d.department_name, e.last_name, e.salary
from departments d, employees e
where d.department_id = e.department_id;

select /*+ leading(d) use_merge(e) no_index(d) */
    d.department_id, d.department_name, e.last_name, e.salary
from departments d, employees e
where d.department_id = e.department_id;

select e.empno, e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.LOSAL and s.HISAL
;

select /*+ leading(e) use_merge(s) no_index(e) */
    e.empno, e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.LOSAL and s.HISAL
;

select /*+ leading(d) use_hash(e) */
    d.department_id, d.department_name, e.last_name, e.salary
from departments d, employees e
where d.department_id = e.department_id;

select /*+ leading(e) use_hash(s) */
    e.empno, e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal;

select e.empno, e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal;

select count(*)
from emp;

select count(*)
from SALGRADE;

