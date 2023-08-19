

<%@page import ="java.sql.*"%>
<%


String email=request.getParameter("email");
String password = request.getParameter("password");
ResultSet rs = null;
String alert=null;

try{
	
 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test1","root","root");
	Statement st=con.createStatement();
	
	String SQL="select * from user where email = '"+email+"' AND password = '"+password+"' ";
	rs = st.executeQuery(SQL);
	 
	
	if(rs.next())
	{
		response.sendRedirect("page2.html");
	}
	else
	{
		%>
		<script>
		alert("Invalid Credentials");
		window.location= "signin.html";		
		</script>	
	
		<%
		
		
	}	
}


catch(Exception e)
{
 	response.sendRedirect("error.html");
 }
%>
		