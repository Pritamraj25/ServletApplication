package com.servlet;

import java.io.IOException;
import java.sql.ResultSet;

import com.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    // GET → Display login page
    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("/login.jsp")
           .forward(req, resp);
    }


    // POST → Process login
    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserService us = new UserService();

        ResultSet rs = us.login(email, password);

        try {

            if (rs != null && rs.next()) {

                // Login successful
            	String name = rs.getString("name");
            	String userEmail = rs.getString("email");
            	String gender = rs.getString("gender");
            	String city = rs.getString("city");
            	
            	req.setAttribute("name", name);
            	req.setAttribute("email", userEmail);
            	req.setAttribute("gender", gender);
            	req.setAttribute("city", city);
            	
                req.getRequestDispatcher("/profile.jsp")
                   .forward(req, resp);

            } else {

                // Login failed
                req.setAttribute(
                    "msg",
                    "Invalid Email or Password"
                );

                req.getRequestDispatcher("/login.jsp")
                   .forward(req, resp);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }
    }
}