<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jablka</title>
</head>
<body>

<h1>Oto dział w jablkami:</h1>

<form action="${pageContext.request.contextPath}/add-to-basket" method="post">
    <input type="hidden" name="item" value="jablko">
    <input type="number" name="quantity" value="1">
    <input type="submit" value="Kup jablko">
</form>

<form action="homepage-servlet" method="get">
    <button type="submit">Rozmyśliłem się</button>
</form>

</body>
</html>
