package com.spring.mvc.controller;

import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mvc.entity.Employee;
import com.spring.mvc.service.UserService;

@Controller
public class EmployeeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/empForm")
	public String openEmpForm() {

		return "empForm";

	}

	@RequestMapping("/empView")
	public String viewEmployee(Model model) {

		List<Employee> empList = userService.viewEmployee();
		model.addAttribute("list", empList);

		return "viewsEmp";

	}

	@RequestMapping(value = "addEmployee", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute Employee employee, Model model) {

		System.out.println(employee);

		Random random = new Random();
		int id = random.nextInt(10000);

		employee.setId(id);

		int status = userService.addEmployee(employee);

		if (status == 1) {
			model.addAttribute("msg", "Employee Successfully Added Database !!");
			return "empForm";

		} else {
			model.addAttribute("msg", "Employee Not Added Database, Please Try again !!");
			return "empForm";
		}

	}

}
