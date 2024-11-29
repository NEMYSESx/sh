package com.shruti.jecrc;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class LoginServlet extends HttpServlet {
    private ArrayList<User> users = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        users.add(new User("john", "1234", "John Doe", "john@example.com", "1234567890"));
        users.add(new User("jane", "abcd", "Jane Smith", "jane@example.com", "9876543210"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        for (User user : users) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("resume.jsp");
                return;
            }
        }

        response.sendRedirect("login.jsp?error=Invalid%20credentials");
    }
}
