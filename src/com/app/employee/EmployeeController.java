package com.app.employee;

import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;
	
	@RequestMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView("index");
		
		List<Employee> listEmployee=service.listAll();
		mv.addObject("listEmployee",listEmployee);
		
		return mv;
	}
	
	
	@RequestMapping("/new")
	public String newEmployeeForm(Map<String,Object> model)
	{
		
		Employee employee = new Employee();
		model.put("employee", employee);
		
		return "new_employee";
	}
	
	
	@RequestMapping(value="/save" , method=RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("employee") Employee employee)
	{
				
		
			service.save(employee);
		
			return "redirect:/";
		}
		
	
	
	@RequestMapping("/edit")
	public ModelAndView editEmployeeForm(@RequestParam long id)
	{
		ModelAndView mv=new ModelAndView("edit_employee");
		Employee employee = service.get(id);
		mv.addObject("employee", employee);
		return mv;
	}
	
	
	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam long id)
	{
		service.delete(id);
		return "redirect:/";
	}
	

}
