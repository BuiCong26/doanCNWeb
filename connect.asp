<%
	set connDB = Server.CreateObject("ADODB.Connection")
	Strconnection = "Provider=SQLOLEDB; Data Source=ANHNGUYEN\SQLEXPRESS; initial catalog=CSDL; User id=zupsu; Password=1"
	connDB.ConnectionString = Strconnection
	connDB.Open
	
%>