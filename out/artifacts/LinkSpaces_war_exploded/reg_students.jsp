<%@ page import="controller.db_controller.UniversityController" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tungsten242
  Date: 3/25/19
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="styles/main.css" rel="stylesheet" type="text/css"/>
    <script src="scripts/validate.js"></script>
    <title>Register</title>
</head>
<body>

    <%
        UniversityController uni = new UniversityController();
        List<String> uniList = new ArrayList<>();
        PrintWriter write = response.getWriter();
        uniList = uni.getUniList();
    %>

    <div id="container">
    <div id="contentbox">
    <p class="contenthead">Register as a Student</p>
    <form id="regform" action="RegisterController" method="POST" onsubmit="return validateStudent()">
        
        <hr/>
        <p class="inputlabel">First Name:</p>
        <input class="inputfield" type="text" name="fname" required/>
        
        <p class="inputlabel">Last Name:</p>
        <input class="inputfield" type="text" name="lname" required/>
        
        <p class="inputlabel">Date of birth:</p>
        <input class="inputfield" type="date" name="dob" required/>
        
        <p class="inputlabel">E-mail:</p>
        <input class="inputfield" type="email" name="email" required/>
        
        <p class="inputlabel">University:</p>
        <select name="university" class="inputselect">
            <option value="none">Select a University</option>
            <%
                for(String uniName: uniList){
            %>
            <option value="<%=uniName%>"><%=uniName%></option>
            <%
                }
            %>
        </select>
        <%--<input class="inputfield" type="text" name="university" required/>--%>
        
        <p class="inputlabel">Index Number:</p>
        <input class="inputfield" type="text" name="index" required/>
        
        <hr/>
        <p class="inputlabel">Username:</p>
        <input class="inputfield" type="text" name="uname" required/>
        
        <p class="inputlabel">Password:</p>
        <input class="inputfield" type="password" name="pwd" id="pwd" required/>
        
        <p class="inputlabel">Repeat Password:</p>
        <input class="inputfield" type="password" name="rptpwd" id="rptpwd" required/>
        
        <input class="inputfield" type="hidden" name="type" value="student"/>
        <hr/>
        <!--<input class="btntype2" type="reset" value="Reset"/>-->
        <input class="btntype2" type="submit" value="Register"/>
        
    </form>
</div>
</div>
</body>
</html>
