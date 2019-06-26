SET SERVEROUTPUT ON

BEGIN
 DBMS_OUTPUT.PUT_LINE('sdas');
 END;
 
DECLARE 
    aId number;
    fName varchar(50);
    lName varchar(50);
begin
  select Id,firstName,lastName INTO aId,fName,lName
        from Associate
          where Id=&aId;
   DBMS_OUTPUT.PUT_LINE(aId||' '||fName||' '||lName);                
end;

DECLARE 
   aId ASSOCIATE.ID%TYPE;
    fName associate.firstname%TYPE;
    lName ASSOCIATE.LASTNAME%TYPE;
begin
  select Id,firstName,lastName INTO aId,fName,lName
        from Associate
          where Id=&aId;
   DBMS_OUTPUT.PUT_LINE(aId||' '||fName||' '||lName);                
end;


DECLARE 
   arow ASSOCIATE%rowtype;
begin
  select * into arow
        from ASSOCIATE
          where Id=&aId;
   DBMS_OUTPUT.PUT_LINE(arow.id||' '||arow.firstname);                
end;

DECLARE 
    CURSOR associateCursor is select * from Associate;
    associateRow ASSOCIATE%ROWTYPE;
begin
      OPEN associateCursor;
      LOOP
      FETCH associateCursor INTO associateRow;
        DBMS_OUTPUT.PUT_LINE(associateRow.ID||' '||associateRow.firstName||' '||associateRow.lastName);
        EXIT WHEN associateCursor%NOTFOUND;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Khatm');
       
      
  CLOSE associateCursor;
end;
/*query1*/
select staff_name,design_code
from STAFF_MASTER
where staff_sal>8900 and STAFF_SAL<11000
and HIREDATE<'10-JUN-10';
/*query5*/
select *
  from STAFF_MASTER
   WHERE STAFF_NAME LIKE '%/_%' ESCAPE '/';
/*query3*/
select *
from STAFF_MASTER
where MGR_CODE is  null;
/*query4*/
  1.1
 Q.1
  select staff_name,design_code 
  from staff_master
 where STAFF_SAL>20000 and STAFF_SAL<90000
  and HIREDATE> '01-june-2019';
 
  
 
  
  q5
  
    select staff_name from staff_master where staff_name like '%/_%' escape '/';
  
  q3  
SELECT  staff_name
FROM    staff_master
WHERE   MGR_CODE is null;

q4
select * from book_master
where book_pub_year>'2004' and book_pub_year<'2008' ;

select * from book_master
where book_pub_year between '2004' and '2008'  and book_name like '%&%';

2.1
select staff_name,staff_sal
from staff_master;

2.2
q1 ...
select max(staff_sal)as maximum ,min(staff_sal) as minimum,
avg(staff_sal) as average,sum(staff_sal) as total
from staff_master;

select dept_code,(mgr_code)
from staff_master;

select staff_name,dept_code,dept_name
from department_master,staff_master
where department_master.dept_code=staff_master.dept_code
and staff_sal>'20000';

select staff_name,dept_code,dept_name
from department_master as dm ,staff_master as sm
where dm.dept_code=sm.dept_code
and staff_sal>'20000';

//3.1
1
select staff_name,staff_code,staff_sal
from staff_master
where staff_sal<(select avg(staff_sal) from staff_master);


select count(empno) as total_no_of_mgr ,employee.DEPTNO
from employee
group by deptno;


SELECT hiredate FROM employee WHERE TO_CHAR(hiredate,'mon')='june';

////3.1-2
select staff_code as staff#,staff_name as staff,dept_name as mgr#,mgr_code as manager
from staff_master,department_master
where staff_master.dept_code=department_master.dept_code;
 
 3.1-13
select count(empno)as no_of_emp,deptno from employee group by deptno;

2.1     
select staff_name,LPAD(staff_sal,5,'$')from staff_master ;
/*1.1*/
select staff_name,design_code
from STAFF_MASTER
where staff_sal>8900 and STAFF_SAL<11000
and HIREDATE<'10-JUN-10';

/*2.1.2*/
select Student_Name,To_Char(Student_Dob, 'MM DD YYYY',)as student_dob from Student_Master
  where To_Char(Student_Dob,'DAY')LIKE ('%FRIDAY%') OR TO_CHAR(STUDENT_DOB,'DAY')LIKE ('%TUESDAY%');
  2.1.3
select staff_name,round((SYSDATE-HIREDATE)/365*12) as " month worked"From staff_master order by round((SYSDATE-HIREDATE)/365*12); 
select * from Staff_Master where To_Char(Hiredate, 'DAY') between 1 And 30 and To_Char(Hiredate, 'Month') like '%JUN%';
3.11.4
select count(empno) as total_no_of_EMP,Mgr
from emp
group by Mgr
ORDER BY MGR;
/*3.1.10.	Display Staff CodeStaff Name, Department Name, and Designation name for those who have joined in last 3 months.*/
Select hiredate from staff_master where hiredate > sysdate-90;
/*2.1.7*/
select Instr('mississipi','i',-2) from dual;
/*2.1.8*/
select Staff_Code, Staff_Name,
/*2.1.9*/
select student_code,student_name,dept_name
from student_master,department_master
where student_master.dept_code=department_master.dept_code
and dept_code=(select max(dept_code) from department_master);

sELECT DEPT_CODE,COUNT(ENAME),COUNT(STAFF_NAME) FROM EMP,STAFF_MASTER,DESIGNATION_MASTER 
WHERE DESIGN_NAME='Manager';