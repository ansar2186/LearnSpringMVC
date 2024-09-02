package com.spring.mvc.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {

		User user = new User();
		user.setUserName(rs.getString("userName"));
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("password"));

		return user;
	}

}
