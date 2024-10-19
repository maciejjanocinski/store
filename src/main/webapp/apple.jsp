<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jabłka</title>
</head>
<body>

<h1>Oto dział w jabłkami:</h1>

<form action="${pageContext.request.contextPath}/add-to-basket" method="post">
    <input type="hidden" name="item" value="jabłko">
    <input type="submit" value="Kup jabłko">
</form>

<form action="homepage-servlet" method="get">
    <button type="submit">Rozmyśliłem się</button>
</form>

</body>
</html>
