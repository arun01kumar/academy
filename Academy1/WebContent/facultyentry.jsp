<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.cts.academy1.BO.*,com.cts.academy1.model.*,java.util.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

</style>
</head>
<body>
<header>
 <h2><i>ACADEMY PORTAL</i></h2>
</header>
<%
FacultyBO fb=new FacultyBO();
String s=fb.getFaultyId();
List<Skill> skl=new ArrayList<Skill>();
SkillBO sb=new SkillBO();
skl=sb.getAllSkills();

%>
<div>
<h1>New Faculty Entry</h1>

<form action="./FacultyInsertServlet" method="post">

Faculty id: <input type="text" name="fid"value="<%=s %>"><br><br>
Faculty Name: <input type="text" name="fname"><br><br>
Qualification: <input type="text" name="fqua"><br><br>


Skill:<select name="fskill">
<% for(Skill s1:skl){ %>
  <option value="<%=s1.getSkillid()%>"><%=s1.getSkill() %></option>
  <%} %>
  
  </select><br><br>

Certification: <input type="radio" name="certified" value="Y" checked> Yes
  <input type="radio" name="certified" value="N"> No <br><br><br>

<input type="submit" value="Faculty Entry">

</form>
</div>
</body>
</html>