<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado del prestamo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl6ukwtvu6V91mRx31L6w1Z80zr3oL2BTf8vZ8R9ncRZtE9Gd0" crossorigin="anonymous">
    <style>
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            border: 1px solid #ccc;
        }
    </style>
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
            <th scope="col">mes</th>
            <th scope="col">Cuota $</th>
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
