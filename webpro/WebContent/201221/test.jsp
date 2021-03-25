<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	div{
		background: lightblue;
		
	}
	
	span{
		color : blue;
		font-size: 1.5em;
	}
	</style>
</head>
<body>

<h1>JSP : Java Server Page</h1>

	<p>java와 html 코드를 혼용해서 기술할 수 있다.</p>
	<p>front end 역할과 back end 역할을 할 수 있다.</p>
	<p>자바문장을 기술할 때는 &lt;% %&gt; 기호 사이에 기술한다.</p>
	<p>자바변수를 출력할 때는 &lt;% = 변수이름  %&gt; 형식으로 기술한다.</p>
	<p>클라이언트에서 데이터 입력 후 전송(제출)하면 jsp파일에서 테이터를 받는다</p>
	<p>request 내장객체를 이용해서 값을 받는다.</p>
	<p>String 변수명 = request.getParameter("name")</p>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String s1 = request.getParameter("name");
	String s2 = request.getParameter("tel");
	String s3 = request.getParameter("pass");
	
	%>
	
<div>
	<p>당신의 이름은 <%= s1 %>입니다.</p>
	<span><%= s1 %>님 반값습니다.</span><br>
	<%= s2 %>번호로 연락드리겠습니다.<br>	
	당신의 비밀번호는 <%=s3 %>입니다.<br>
</div>
	


</body>
</html>










