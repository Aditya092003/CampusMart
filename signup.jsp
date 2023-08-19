

<%@page import ="java.sql.*"%>
<%
String name  = request.getParameter("name");
String email=request.getParameter("email");
String mobileNo=request.getParameter("mobileNo");
String password=request.getParameter("password");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into user(name,email,mobileNo,password) values('"+name+"','"+email+"','"+mobileNo+"','"+password+"')");
	response.sendRedirect("page2.html");


}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>
