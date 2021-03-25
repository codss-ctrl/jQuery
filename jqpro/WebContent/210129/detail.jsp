<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//클라이언트 요청시 전송데이터를 받는다
	String buyer_id = request.getParameter("id");//ajax에서 data id 에서 가져옴
	
	//1. 2.
	Connection con = DBConnect.getCon();
	
// 	//3. 
// 	String sql = "select * from buyer where buyer_id ='"+ buyer_id +"'";
	
// 	//4.
// 	Statement stmt = con.createStatement();
	
// 	//5.
// 	ResultSet rs = stmt.executeQuery(sql);
	
// 	3. 
	String sql = "select * from buyer where buyer_id = ?";
// 4.
	PreparedStatement stmt = con.prepareStatement(sql);
	stmt.setString(1, buyer_id);

//5. 
	ResultSet rs = stmt.executeQuery();//statement에서 주기때문에 sql문 매개로 안줌
	if(rs.next()){
		String id	 	= rs.getString("buyer_id");
		String name 	= rs.getString("buyer_name");
		String lgu 		= rs.getString("buyer_lgu");
		String bank 	= rs.getString("buyer_bank");
		String bankno 	= rs.getString("buyer_bankno");
		String bname 	= rs.getString("buyer_bankname");
		String zip 		= rs.getString("buyer_zip");
		String add1	 	= rs.getString("buyer_add1");
		String add2 	= rs.getString("buyer_add2");
		
		
%>		
		{
			"id" 	: "<%=id %>",
			"name"	: "<%=name %>",
			"lgu"	: "<%=lgu %>",
			"bank"	: "<%=bank %>",
			"bankno": "<%=bankno %>",
			"bname"	: "<%=bname %>",
			"zip"	: "<%=zip %>",
			"add1"	: "<%=add1 %>",
			"add2"	: "<%=add2 %>"
		
		}


<%	

	}//end if
	
%>












