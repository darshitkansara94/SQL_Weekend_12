Select * from tbl_employee
alter table tbl_employee add is_deleted bit

EMp Id = 1,3,5,1002,2003 = 0

update tbl_employee set is_deleted = 1
where is_deleted is null 

select * from tbl_employee
where is_deleted is null 

