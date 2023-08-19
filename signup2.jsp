

<%@page import ="java.sql.*"%>
<%


String email=request.getParameter("email");
String mobileNo = request.getParameter("mobileNo");
ResultSet rs = null;
ResultSet rss = null;

try{
	
 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test1","root","root");
	Statement st=con.createStatement();
	
	String SQL="select * from user where email = '"+email+"' ";
	rs = st.executeQuery(SQL);
	
	String SQLL="select * from user where mobileNo = '"+mobileNo+"' ";
	rss = st.executeQuery(SQLL);
	
	
	if(rs.next())
	{	
		response.sendRedirect("error2.html");
	}
	if(rss.next()){
		response.sendRedirect("error2.html");
	}
	
	else
	{
		response.sendRedirect("signup.jsp");
	}	
}


catch(Exception e)
{
 	response.sendRedirect("error.html");
 }
%>
