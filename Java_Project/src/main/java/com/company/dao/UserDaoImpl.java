package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DUBtil;

public class UserDaoImpl implements UserDao{

	@Override
	public boolean isValidUser(String email, String password) {
		String query = "SELECT *FROM users WHERE email = ? AND password = ? ";
		try {
			Connection connection = DUBtil.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1,email);
			preparedStatement.setString(2,password);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			System.out.println("Query is running"); 
			
			return resultSet.next();
			
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	
	}

	@Override
	public boolean addUserDao(User user) {
		System.out.println("i am at insert query");
		String query = "INSERT INTO users (username, email, password) values (?, ?, ?)";
		try {
			Connection connection = DUBtil.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());
			
			System.out.println("About to insert values"); 
			int rows = preparedStatement.executeUpdate();
			
			System.out.println("User added"); 
			
			return rows>0;
			
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("false user entry"); 
			return false;
		}
	}

}
