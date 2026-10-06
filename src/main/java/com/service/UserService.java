package com.service;

import java.sql.ResultSet;

import com.dao.UserDao;
import com.entity.User;

public class UserService {

	
	UserDao dao=new UserDao();
	
	public String saveUser(User user)
	{
		return dao.saveUser(user);
	}
	
	
	public ResultSet login(String email,String password)
	{
		
		ResultSet rs=dao.login(email, password);
		
		return rs;
	}
}

