<%--
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
    <title>Register</title>
</head>
<body>
    <div id="container">
    <div id="contentbox">
    <p class="contenthead">Register as a Student</p>
    <form id="regform" action="RegisterController" method="POST">
        
        <hr/>
        <p class="inputlabel">First Name:</p>
        <input class="inputfield" type="text" name="fname"/>
        
        <p class="inputlabel">Last Name:</p>
        <input class="inputfield" type="text" name="lname"/>
        
        <p class="inputlabel">Date of birth:</p>
        <input class="inputfield" type="date" name="dob"/>
        
        <p class="inputlabel">E-mail:</p>
        <input class="inputfield" type="text" name="email"/>
        
        <p class="inputlabel">University:</p>
        <input class="inputfield" type="text" name="university"/>
        
        <p class="inputlabel">Index Number:</p>
        <input class="inputfield" type="text" name="index"/>
        
        <hr/>
        <p class="inputlabel">Username:</p>
        <input class="inputfield" type="text" name="uname"/>
        
        <p class="inputlabel">Password:</p>
        <input class="inputfield" type="password" name="pwd"/>
        
        <p class="inputlabel">Repeat Password:</p>
        <input class="inputfield" type="password" name="rptpwd"/>
        
        <input class="inputfield" type="hidden" name="type" value="student"/>
        <hr/>
        <!--<input class="btntype2" type="reset" value="Reset"/>-->
        <input class="btntype2" type="submit" value="Register"/>
        
    </form>
</div>
</div>
</body>
</html>
