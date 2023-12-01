package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.dao.EmployeeDao;
import com.spring.model.Employee;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeDao employeeDao;
	
	@RequestMapping("/viewEmployee")
	public String viewemp(Model m) {
		List<Employee> list = employeeDao.listsEmp();
		m.addAttribute("list", list);
		return "viewEmployee";
	}

	@RequestMapping("createEmployee")
	public String save1() {
		return "createEmployee";
	}

	@RequestMapping("/saveEmployee")
	public String save(@ModelAttribute Employee employee, Model model) {
		employeeDao.save(employee);
		System.out.println(employee);
		model.addAttribute("employees", employee);
		return "redirect:/viewEmployee";
	}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		employeeDao.deleteEmp(id);
		System.out.println(id + " deleted");
		return "redirect:/viewEmployee";
	}

	@RequestMapping("/get/{id}")
	public String get(@PathVariable int id, Model model) {
		Employee e1 = employeeDao.getById(id);
		employeeDao.getById(id);
		model.addAttribute("employees", e1);
		return "viewEmployee";
	}

	@RequestMapping("/update/{id}")
	public String update(@PathVariable int id,@ModelAttribute("employee") Employee employee, Model model) {
		Employee e = employeeDao.getById(id);
		System.out.println(e);		
		employee.setId(e.getId());
		employee.setName(e.getName());
		employee.setSalary(e.getSalary());		
		model.addAttribute("employees", employee);
		return "editEmp";
	}

	@RequestMapping(value = "/update/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute Employee employee, Model model) {
		employeeDao.update(employee);
		System.out.println(employee);
		model.addAttribute("employees", employee);
		return "redirect:/viewEmployee";
	}
}
