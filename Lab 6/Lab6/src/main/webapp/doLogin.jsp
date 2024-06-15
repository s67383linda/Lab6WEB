<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Code to validate username and password
    // Assuming you have a Connection object conn
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab6", "root", "admin");
        String query = "SELECT * FROM userprofile WHERE username=? AND password=?";
        PreparedStatement statement = conn.prepareStatement(query);
        statement.setString(1, username);
        statement.setString(2, password);
        ResultSet result = statement.executeQuery();
        if (result.next()) {
            // Successful login, redirect to main.jsp
            session.setAttribute("username", username);
            session.setAttribute("firstname", result.getString("firstname"));
            session.setAttribute("lastname", result.getString("lastname"));
            response.sendRedirect("main.jsp");
        } else {
            // Invalid login, redirect back to login.jsp with message
            response.sendRedirect("login.jsp?message=Invalid username or password..!");
        }
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
