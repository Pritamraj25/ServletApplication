package com.servlet;

import java.io.IOException;

import com.entity.User;
import com.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/registration")
public class ProcessRegistration extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String name=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String gender=req.getParameter("gender");
		String city=req.getParameter("city");
//		System.out.println(name);
//		System.out.println(email);
//		System.out.println(password);
//		System.out.println(gender);
//		System.out.println(city);
		
		User user=new User(name,email,password,gender,city);
		
		UserService service=new UserService();
		
		String msg=service.saveUser(user);
		
		
		req.setAttribute("msg", msg);
		
		req.getRequestDispatcher("register-form.jsp").forward(req, resp);
	}
}
