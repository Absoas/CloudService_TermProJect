<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" import="DO.*,bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="gb" scope= "page" class="DO.login_DO"></jsp:useBean>
<jsp:useBean id="ab" scope="page" class="bean.Db_connection"></jsp:useBean>
<jsp:setProperty property="*" name="gb"></jsp:setProperty>

 <%
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
 
    login_DO ob2 = ab.selectDB(id, pass);
    
    System.out.println(ob2);
    
    if(ob2 != null){
       System.out.println("login good");
       out.println("<script>");
       out.println("alert('로그인 되었습니다. 환영합니다. :)')");
       out.println("location.href='main.jsp'");
       out.println("</script>");
       
    }else if (ob2 == null){
    	  System.out.println("login fail");
    	  out.println("<script>");
          out.println("alert('로그인이 실패하였습니다 다시 로그인 해주십시오!')");
          out.println("location.href='login_form.jsp'");
          out.println("</script>");
          
    }
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>