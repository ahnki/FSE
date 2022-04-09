<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie get Example</title>
</head>
<body>
<%
	System.out.println("b13_cookie_get.jsp");
	Cookie[] cookies = request.getCookies();

	for(int i = 0; i < cookies.length; i++){
		String str = cookies[i].getName();
		if(str.equals("cookie_name")){
			out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br/>");
			out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br/>");
			out.println("=====================================================<br/>");
		}
	}
%>
<a href="b13_cookie_del.jsp">cookie delete</a>
</body>
</html>