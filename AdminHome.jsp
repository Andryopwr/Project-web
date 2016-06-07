<%-- 
    Document   : AdminHome
    Created on : 04-Jun-2016, 23:03:22
    Author     : Vivi Siska
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Admin = (String) session.getAttribute("Admin");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="Images/bAdmin.jpg">
        <table>
            <style>
                *{ 
                    margin:0;
                    padding:0; 
                    font-family:Consolas;font-size: 15px;color: indigo }
                </style>
                <tr>
                    <td><h4>Admin : <%=Admin%></h4></td>
                </tr>
                <tr>
                    <td><h4><a href="FirstServlet"> Back To Home <<< </h4></td>
                </tr>
            </table>
            <table>
                <br><br><br><marquee style="font-size: 18px; font-family: snap ITC;color: cadetblue">Mahasiswa</marquee>
            <tr>            
                <td><a href="FormSignUp.jsp"><img src="Images/m2.jpg"></a></td>
                <td><a href="viewData.jsp"><img src="Images/viewdata.jpg"></a></td>
            </tr>
            <hr>
        </table>
        <table>
            <br><br><br><br><br><br><br><br><br><br><br><br><hr>
            <marquee style="font-size: 18px; font-family: snap ITC;color: cadetblue">Mata Kuliah</marquee>
            <tr>            
                <td><a href="AddMK.jsp"><img src="Images/mk.jpg"></a></td>
            </tr>
        </table>
    </body>
</html>
