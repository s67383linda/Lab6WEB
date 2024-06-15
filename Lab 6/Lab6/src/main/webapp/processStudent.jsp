<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page errorPage="errorStudent.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p{
                color:blue
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="myStudent" class="Lab6.com.Student" scope="request"/>
        <jsp:setProperty name="myStudent" property="*"/>

        <%
            int result;

            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Step1: MySQL driver loaded...");

            String myURL = "jdbc:mysql://localhost/cse3209";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2: Database is connected...!");

            System.out.println("Step 3: Prepared Statement created...!");

            String sInsertQry = "INSERT INTO STUDENT(stuno,stuname,stuprogram) VALUES(?,?,?)";
            System.out.println("\tSQL Query: " + sInsertQry);

            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

            System.out.println("Step 4: Perform insertion of record...!");
            myPS.setString(1, myStudent.getStuno());
            myPS.setString(2, myStudent.getName());
            myPS.setString(3, myStudent.getProgram());

            result = myPS.executeUpdate();
            if (result > 0) {
                System.out.println("\tRecord successfullyadded into Book's table...!");
                out.print("<p>" + "Record with student no " + myStudent.getStuno() + " successfully created..!" + "</p>");
                out.print("<p>" + "Details of record are;" + "</p>");
                out.print("<p>" + "Student ID : " + myStudent.getStuno() + "</p>");
                out.print("<p>" + "Name : " + myStudent.getName() + "</p>");
                out.print("<p>" + "Program :" + myStudent.getProgram() + "</p>");
            }

            System.out.println("Step 5: Close database connection...!");
            myConnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed...!");
        %>
    </body>
</html>
