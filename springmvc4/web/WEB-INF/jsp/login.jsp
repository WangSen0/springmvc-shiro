
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${website}login" method="post">
        <input type="text" name="username"/>
        <input type="text" name="password"/>
        <input type="submit" value="submit"/>
    </form>
    <br/>
    ${message}
</body>
</html>
