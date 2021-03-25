<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<form action = "input.jsp" method= "post">
		이름:<input type="text" name="input"><br>
		학번:<input type="text" name="number1" size=10">
		아이디:
		<input type="text"  name="name"><br>
		<input type="image" src="../images/check.png" alt="제출버튼">
		
	
		<input type="password" name="pass">
		<input type="radio" name="gender" value="female">
		<input type="radio" name="gender" value="male">
		<input type="checkbox" name="fruits" value="apple" checked>apple
		<input type="submit" value="전송">
		<input type="reset" value="초기화">
		물품가격:
		<input type="text" name="user"><br>
		수량:
		<input type="text" name="su"><br>
		<input type="button" value="계산" onclick="alert('10000원입니다.')">
		
		
	</form>


 	<form action = "input.jsp" method= "get">
		이름:<input type="text" name="input"><br>
		학번:<input type="text" name="number2"size=10">
		<input type="submit" value="전송">
		
	</form>
	
	<form enctype="multimedia/form-data">
	<input type="file" accept="image/jpg.image/gif">
	<button onclick="alert('안녕하세요?')"> 눌러보세요!</button>
	
	
	</form>
	
</body>
</html>