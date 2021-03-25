<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
//1.
	Class.forName("oracle.jdbc.driver.OracleDriver");
//2.Connection 객체
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection con = DriverManager.getConnection(url, "HYR", "java");

//3. sql문장을 실행하기 위한 객체 - Statement, PreparedStatement
	Statement stmt = con.createStatement();

//4.
	String sql = "select * from lprod";

//5. 실행
	ResultSet rs = stmt.executeQuery(sql);

%>
<table border="1">
<tr class = "tr1">
	<td>아이디</td>
	<td>지유</td>
	<td>엔엠</td>
</tr>	
<%
	
	while(rs.next()){
		
		int id = rs.getInt("lprod_id");
		String gu = rs.getString("lprod_gu");
		String nm = rs.getString("lprod_nm");
		
%>		
		<tr>
			<td><%= id %></td>
			<td><%= gu %></td>
			<td><%= nm %></td>
		</tr>
		
<%	
	}
%>
</table>





]


