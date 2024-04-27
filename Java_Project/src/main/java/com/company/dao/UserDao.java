package com.company.dao;

public interface UserDao {

	boolean isValidUser(String email, String password);

	boolean addUserDao(User user);

}
