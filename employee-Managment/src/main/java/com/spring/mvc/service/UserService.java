package com.spring.mvc.service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.mvc.entity.Employee;
import com.spring.mvc.entity.EmployeeMapper;
import com.spring.mvc.entity.User;
import com.spring.mvc.entity.UserMapper;

public class UserService {
	JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public User userLogin(String userName, String userPassword) {

		User userObj = null;
		String sql = "select * from user where userName='" + userName + "'";
		System.out.println(sql);

		List<User> users = jdbcTemplate.query(sql, new UserMapper());

		if (users.size() > 0) {

			userObj = new User();

			for (User user : users) {

				userObj.setUserName(user.getUserName());
				userObj.setEmail(user.getEmail());
				userObj.setPassword(user.getPassword());

			}
			return userObj;
		}

		return userObj;

	}

	public int addEmployee(Employee employee) {

		String newQuery = "insert into employee values('" + employee.getId() + "','" + employee.getFirstName() + "','"
				+ employee.getLastName() + "','" + employee.getEmail() + "','" + employee.getPassword() + "','"
				+ employee.getAddress() + "','" + employee.getAddress2() + "','" + employee.getCity() + "','"
				+ employee.getState() + "','" + employee.getPinCode() + "','" + employee.getGender() + "')";

		return jdbcTemplate.update(newQuery);
	}

	public List<Employee> viewEmployee() {
		String query = "select * from employee";

		return jdbcTemplate.query(query, new EmployeeMapper());

	}

	public Employee getEmployeeById(int id) {

		String sql = "select * from employee where id=?";

		return jdbcTemplate.queryForObject(sql, new Object[] { id },
				new BeanPropertyRowMapper<Employee>(Employee.class));
	}

	public int updateEmployee(Employee employee) {

		String updateQuery = "update employee set firstName='" + employee.getFirstName() + "',lastName='"
				+ employee.getLastName() + "',email='" + employee.getEmail() + "',password='" + employee.getPassword()
				+ "',address='" + employee.getAddress() + "',address2='" + employee.getAddress2() + "',city='"
				+ employee.getCity() + "',state='" + employee.getState() + "',pinCode='" + employee.getPinCode()
				+ "',gender='" + employee.getGender() + "' where id=" + employee.getId() + "";

		System.out.println("Update Query-------" + updateQuery);

		return jdbcTemplate.update(updateQuery);
	}

	public ByteArrayOutputStream createExcleFile(List<Employee> empList) throws IOException {

		Workbook workbook = new XSSFWorkbook();
		Sheet sheet = workbook.createSheet("Employee-Data");

		Row headerRow = sheet.createRow(0);

		headerRow.createCell(0).setCellValue("ID");
		headerRow.createCell(1).setCellValue("First Name");
		headerRow.createCell(2).setCellValue("Last Name");
		headerRow.createCell(3).setCellValue("Email");
		headerRow.createCell(4).setCellValue("Password");
		headerRow.createCell(5).setCellValue("Address");
		headerRow.createCell(6).setCellValue("Address2");
		headerRow.createCell(7).setCellValue("City");
		headerRow.createCell(8).setCellValue("State");
		headerRow.createCell(9).setCellValue("Pin code");
		headerRow.createCell(10).setCellValue("Gender");

		// Populate data rows
		int rowIndex = 1;

		for (Employee employee : empList) {

			Row row = sheet.createRow(rowIndex++);

			row.createCell(0).setCellValue(employee.getId());
			row.createCell(1).setCellValue(employee.getFirstName());
			row.createCell(2).setCellValue(employee.getLastName());
			row.createCell(3).setCellValue(employee.getEmail());
			row.createCell(4).setCellValue(employee.getPassword());
			row.createCell(5).setCellValue(employee.getAddress());
			row.createCell(6).setCellValue(employee.getAddress2());
			row.createCell(7).setCellValue(employee.getCity());
			row.createCell(8).setCellValue(employee.getState());
			row.createCell(9).setCellValue(employee.getPinCode());
			row.createCell(10).setCellValue(employee.getGender());

		}

		// Write the data to a byte array output stream
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		workbook.write(outputStream);
		workbook.close();

		return outputStream;

	}

	public int deleteEmployeeById(int id) {
		String deleteQuery="delete from employee where id="+id+"";    
		
		return jdbcTemplate.update(deleteQuery);
	}

}
