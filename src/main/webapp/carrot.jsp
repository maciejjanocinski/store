<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Marchewki</title>
</head>
<body>

<h1>Oto dział w marchewkami:</h1>

<form action="${pageContext.request.contextPath}/add-to-basket" method="post">
    <input type="hidden" name="item" value="marchewka">
    <input type="submit" value="Kup marchewke">
</form>

<form action="homepage-servlet" method="get">
    <button type="submit">Rozmyśliłem się</button>
</form>

</body>
</html>
