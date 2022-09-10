<!--#include file="conn.asp"-->
<%
id=Request.QueryString("id")

set rs=server.CreateObject("ADODB.RecordSet")
rs.Source="select * from gongshi where id="&id&""
rs.Open rs.Source,Conn,1,1
do while not rs.eof
	content=rs("content")
rs.movenext
loop
rs.close
set rs=nothing

Response.Write content
%>