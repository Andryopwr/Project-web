<%-- 
    Document   : isi_KRS
    Created on : May 28, 2016, 8:27:27 PM
    Author     : Galih A
--%>
<%@page import="java.util.*" %>

<jsp:useBean id="inv" scope="session"
             class="Kuliah.PilihKRS" />
<%
    DB.DataBaseConnection conn = new DB.DataBaseConnection();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body BGCOLOR="yellow">
        <table border='6' cellspacing='2' bgcolor='#F0F0F0' style="margin-left: 17%">
            <tr>
                <td>
                    <br>Kode Matkul : ER121
                    <br>Pemrograman WEB
                    <br><input type="submit" value="Pilih" name="a">
                </td>
                <td>
                    <br>Kode Matkul : IO101
                    <br>Kalkulus             
                    <br><input type="submit" value="Pilih" name="b">
                </td>      
                <td>
                    <br>Kode Matkul : TU021
                    <br>Pancasila            
                    <br><input type="submit" value="Pilih" name="c">
                </td>
                <td>
                    <br>Kode Matkul : PO041
                    <br>PBO II            
                    <br><input type="submit" value="Pilih" name="c">
                </td>
                <td>
                    <br>Kode Matkul : TE123
                    <br>Sistem Operasi          
                    <br><input type="submit" value="Pilih" name="c">
                </td>
                <td>
                    <br>Kode Matkul : TU021
                    <br>Pancasila            
                    <br><input type="submit" value="Pilih" name="c">
                </td>
            </tr>
            <tr>
                <td>
                    <br>Kode Matkul : EO129
                    <br>Analisis Algoritma
                    <br><input type="submit" value="Pilih" name="d">
                </td>

            </tr>

        </table>       
<a href="Tampil_KRS.jsp" target="_blank">Tampil KRS</a></h4>
    </body>