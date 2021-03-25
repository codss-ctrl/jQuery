
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//클라이언트 요청시 전송되는 데이터를 받는다.
	String userId = request.getParameter("id");
//1.
	Connection  con = DBConnect.getCon();
//2 
	String sql = "select mem_id from member where mem_Id='" + userId + "'";

//3.
	Statement stmt = con.createStatement();

//4.
	ResultSet rs = stmt.executeQuery(sql);

	if(rs.next()){
%>		
	{"sw" : "사용불가능합니다."}
	
<% 	}else{ %>
		
	{"sw" : "사용가능합니다."}

<%
	}
%>
