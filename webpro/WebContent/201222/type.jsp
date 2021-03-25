<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>

	<link rel="stylesheet" href="../css/public.css" type= "type/css">
	</head>

<body>




	<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userPass = request.getParameter("pass");
	String userInfo = request.getParameter("area");
	
	userInfo.replaceAll("\r","").replaceAll("\n", "<br>");
	
	%>
	
<br>
<img src="../images/체리.jpg" alt=""><br><br>
<p>	<%= userId%> 님 환영합니다.</p>

    <%= userInfo  %> 




</body>
</html>