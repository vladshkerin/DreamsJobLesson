<%--
  Created by IntelliJ IDEA.
  User: vlad
  Date: 22.03.16
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    if (session.isNew()) {
        %>New user
        <form action="<%=request.getContextPath()%>/login" method="post">
            login : <input type="text" name="login"><br>
            password : <input type="password" name="password"><br>
            <input type="submit">
        </form>
        <%
    } else {
        %>Welcome back, <%=session.getAttribute("login")%>. <a href="<%=request.getContextPath()%>/logout">logout</a><%
    }
%>
<div>
    <a href="<%=request.getContextPath()%>/views/UserView.jsp">Users</a>
</div>
</body>
</html>
