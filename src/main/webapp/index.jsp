<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Préstamo</title>
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
