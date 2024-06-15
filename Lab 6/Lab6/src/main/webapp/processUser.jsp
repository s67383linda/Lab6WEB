<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");

    // Code to insert the user into the database
    // Assuming you have a Connection object conn
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab6", "root", "admin");
        String query = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?, ?, ?, ?)";
        PreparedStatement statement = conn.prepareStatement(query);
        statement.setString(1, username);
        statement.setString(2, password);
        statement.setString(3, firstname);
        statement.setString(4, lastname);
        int rowsInserted = statement.executeUpdate();
        if (rowsInserted > 0) {
            out.println("User registered successfully!");
        }
        conn.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
