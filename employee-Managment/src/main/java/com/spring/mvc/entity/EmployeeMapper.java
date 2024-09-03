package com.spring.mvc.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EmployeeMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

		Employee employee = new Employee();

		employee.setId(rs.getInt("id"));
		employee.setFirstName(rs.getString("firstName"));
		employee.setLastName(rs.getString("lastName"));
		employee.setEmail(rs.getString("email"));
		employee.setPassword(rs.getString("password"));
		employee.setAddress(rs.getString("address"));
		employee.setAddress2(rs.getString("address2"));
		employee.setCity(rs.getString("city"));
		employee.setState(rs.getString("state"));
		employee.setPinCode(rs.getString("pinCode"));
		employee.setGender(rs.getString("gender"));

		return employee;
	}

}
