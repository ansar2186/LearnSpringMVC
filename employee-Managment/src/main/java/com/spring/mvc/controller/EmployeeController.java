package com.spring.mvc.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

	@RequestMapping("/logout")
	public String logOut() {

		return "redirect:/";

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
			return "redirect:/empView";

		} else {
			model.addAttribute("msg", "Employee Not Added Database, Please Try again !!");
			return "empForm";
		}

	}

	@RequestMapping("/editemp/{id}")
	public String showEmpEditForm(@PathVariable int id, Model model) {

		Employee employee = userService.getEmployeeById(id);
		model.addAttribute("empObject", employee);

		return "empEditForm";
	}
	
	
	@RequestMapping("/deleteEmp/{id}")
	public String deleteEmployee(@PathVariable int id, Model model) {

		int status = userService.deleteEmployeeById(id);
		

		return "redirect:/empView";
	}

	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
	public String updateEmployee(@ModelAttribute Employee employee, Model model) {

		System.out.println(employee);

		int updateEmployeeStatus = userService.updateEmployee(employee);

		if (updateEmployeeStatus == 1) {

			model.addAttribute("msg", "Employee Record hase been updated !");

		} else {
			model.addAttribute("msg", "Employee Record is not Updated !");
		}

		return "redirect:/empView";
	}

	@RequestMapping("/register")
	public String showuserRegistrationForm() {

		return "error";
	}

	@RequestMapping("/downloadExcelFile")
	public ResponseEntity<byte[]> downloadExcelData() throws IOException {

		List<Employee> empList = userService.viewEmployee();
		
		ByteArrayOutputStream outputStream = userService.createExcleFile(empList);
		
		// Set the headers for file download
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.set(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=Employee-data.xlsx");

		return ResponseEntity.ok().headers(headers).body(outputStream.toByteArray());

	}

}
