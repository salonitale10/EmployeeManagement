package com.app.employee;

import java.util.List;
import java.util.Optional;

//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EmployeeService {

	
	@Autowired
	private EmployeeRepository repo;
	
	public List<Employee> listAll()
	{
		return (List<Employee>) repo.findAll();
	}
	
	public void save(Employee employee)
	{
		repo.save(employee);
	}
	
	public Employee get(long id)
	{
		Optional<Employee> res = repo.findById(id);
		return res.get();
	}
	
	public void delete(long id)
	{
		repo.deleteById(id);
	}
}
