<%--
  Created by IntelliJ IDEA.
  User: jhosa
  Date: 13/06/2024
  Time: 09:21 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado del prestamo</title>

</head>
<body>
<div class="container">
    <h1>Resultado del prestamo</h1>
    <%
        DecimalFormat df = new DecimalFormat("#,###.00");
        double cantidad = Double.parseDouble(request.getParameter("cantidad"));
        int plazo = Integer.parseInt(request.getParameter("plazo"));
        double cuota = cantidad / plazo;
    %>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Cuota</th>
        </tr>
        </thead>
        <tbody>
        <% for (int i = 1; i <= plazo; i++) { %>
        <tr>
            <th scope="row"><%= i %></th>
            <td><%= df.format(cuota) %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>