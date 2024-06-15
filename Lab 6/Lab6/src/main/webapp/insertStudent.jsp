<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset>
            <legend>Student Registration</legend>
            <form action="processStudent.jsp">
                <table>
                    <tr>
                        <td>Student No</td>
                        <td><input type="text" name="stuno" placeholder="E.g: UKXXXXX"></td>
                    </tr>  
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" placeholder="Enter your name"></td>
                    </tr>
                    <tr>
                        <td>Program</td>
                        <td><select name="program">
                                <option value="BSc. Soft. Eng.">BSc. Soft. Eng.</option>
                                <option value="Bsc. with IM">Bsc. with IM</option>
                                <option value="Bsc. in Networking">Bsc. in Networking</option>
                                <option value="Bsc. in Robotics">Bsc. in Robotics</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="Reset"><input type="reset" name="Cancel>"</td>
                    </tr>
                </table>
            </form>
            <p>&copy2021-Linda</p>
        </fieldset>
    </body>
</html>
