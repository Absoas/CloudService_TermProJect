<%@page import="DO.*"%>
<%@page import="bean.Db_connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import = " bean.*,java.util.* "%>
	
	<% request.setCharacterEncoding("UTF-8"); %>
	
<jsp:useBean id = "DO" class="DO.Patient_DO"/>
<jsp:useBean id = "nu" class="DO.nurse_DO"/>
<jsp:useBean id = "db" class="bean.Db_connection"/>
<jsp:setProperty name ="nu" property = "*" />
<jsp:setProperty name ="DO" property = "*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String action = request.getParameter("action");
	
	if(action.equals("list")){
		ArrayList<nurse_DO> datas = db.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("loginList.jsp");
		
	}else if(action.equals("list1")){
		ArrayList<Patient_DO> datas1 = db.getDBList1();
		request.setAttribute("datas1", datas1);
		pageContext.forward("patientList.jsp");
		
	}else if(action.equals("list2")){
		ArrayList<T_Patient_DO> datas2 = db.getDBList2();
		request.setAttribute("datas2", datas2);

		ArrayList<T_Patient_DO> datas3 = db.getDBList3();
		request.setAttribute("datas3", datas3);
		pageContext.forward("Team1_patientList.jsp");
		
	}else if (action.equals("insert")){
		if(db.insertDB(nu)) {
			response.sendRedirect("control.jsp?action=list");
		}
		else
			throw new Exception("DB 입력오류");
	}
		%>
</body>
</html>