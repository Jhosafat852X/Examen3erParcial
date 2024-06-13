<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Préstamo</title>
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
        form {
            margin-bottom: 20px;
        }
        .mb-3 {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
        .form-control {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn {
            width: 100%;
            padding: 5px 10px;
            background-color: #337ab7;
            color: #fff;
            border: none;
            border-radius: 4px;
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
    <h1>Solicitud de préstamo</h1>
    <form action="Result.jsp" method="post">
        <div class="mb-3">
            <label for="cantidad" class="form-label">Cantidad solicitada:</label>
            <input type="number" class="form-control" id="cantidad" name="cantidad" min="0" required>
        </div>
        <div class="mb-3">
            <label for="plazo" class="form-label">Plazo (meses):</label>
            <input type="number" class="form-control" id="plazo" name="plazo" min="1" max="12" required>
        </div>
        <button type="submit" class="btn btn-primary">Calcular</button>
    </form>
</div>
</body>
</html>
