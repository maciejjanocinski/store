<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ziemniaki</title>
</head>
<body>

<h1>Oto dział w ziemniakami:</h1>

<form action="${pageContext.request.contextPath}/add-to-basket" method="post">
    <input type="hidden" name="item" value="ziemniak">
    <input type="number" name="quantity" value="1">
    <input type="submit" value="Kup ziemniaka">
</form>

<form action="homepage-servlet" method="get">
    <button type="submit">Rozmyśliłem się</button>
</form>

</body>
</html>
