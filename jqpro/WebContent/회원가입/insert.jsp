<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//클라이언특 요청시 전송되는 데이터 받기
	String id = request.getParameter("mem_id");
	String name = request.getParameter("mem_name");
	String mail = request.getParameter("mem_mail");
	String pass = request.getParameter("mem_pass");
	String hp = request.getParameter("mem_hp");
	String zip = request.getParameter("mem_zip");
	String add1 = request.getParameter("mem_add1");
	String add2 = request.getParameter("mem_add2");
	
	System.out.print("====" + id);
	//1. 드라이버 클래스 로딩.
	//2. Connection 객체 얻기
	Connection con = DBConnect.getCon();
	
// 	//3. sql문 작성
// 	String sql = "";
	
// 	//4. sql문장을 실행하기 위한 Statement 객체  또는 PreparedStatement 객체를 생성
// 	Statement stnt = con.createStatement();

	//3. sql문 작성
	String sql = "insert into member(mem_id,	mem_pass,mem_name,mem_zip,mem_add1,";
				
			sql += "mem_add2,mem_hp,mem_mail)values(?,?,?,?,?,?,?,?)";
	//4. sql문장을 실행하기 위한 Statement 객체  또는 PreparedStatement 객체를 생성
	PreparedStatement stmt = con.prepareStatement(sql);
	
	stmt.setString(1,id);
	stmt.setString(2,pass);
	stmt.setString(3,name);
	stmt.setString(4,zip);
	stmt.setString(5,add1);
	stmt.setString(6,add2);
	stmt.setString(7,hp);
	stmt.setString(8,mail);
	
	
	//5. 실행
	int a = stmt.executeUpdate();
	
	if(a > 0){
%>		
		{"sw" : "<%=id %>님 가입축하합니다."}	
<% 	}else{ %> 
		{"sw" : "<%=id%>님 가입실패"}
<%		
	}
%>		
		
			
	
	
	
	
	
	
	
	
	

