<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gruszki</title>
</head>
<body>

<h1>Oto dział w gruszkami:</h1>

<form action="${pageContext.request.contextPath}/add-to-basket" method="post">
    <input type="hidden" name="item" value="gruszka">
    <input type="submit" value="Kup gruszkę">
</form>

<form action="homepage-servlet" method="get">
    <button type="submit">Rozmyśliłem się</button>
</form>

</body>
</html>
