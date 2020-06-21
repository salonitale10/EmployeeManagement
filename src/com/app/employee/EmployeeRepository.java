package com.app.employee;


import org.springframework.data.repository.CrudRepository;

//import org.springframework.repository.CrudRepository;
public interface EmployeeRepository extends CrudRepository<Employee,Long>
{

}
