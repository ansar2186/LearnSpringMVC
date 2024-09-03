package com.spring.mvc.service;

import java.util.List;

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

}
