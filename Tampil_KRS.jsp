<%-- 
    Document   : Tampil_KRS
    Created on : Jun 8, 2016, 5:15:43 AM
    Author     : Galih A
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="inv" scope="session"
             class="Kuliah.PilihKRS" />
<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=UTF-8">
        <title>Tampil KRS</title>
    </head>
    <body bgcolor="Yellow">
        <h4><a href="pilihKelas.jsp">Home</a></h4>
        <font style="font-family: Arial; font-size: 16pt; color: black">
            Tampil KRS
        </font>
        <%
            String data = inv.getInvoiceItem(session);
        %>
        <table border="1" align="center" cellpadding="8">
            <%=data%>
        </table>
    </body>
</html>
