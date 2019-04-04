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
    <p class="contenthead">Register as a University</p>
    <form id="regform" action="RegisterController" method="POST">
        
        <hr/>
        <p class="inputlabel">University:</p>
        <input class="inputfield" type="text" name="uni"/>
        
        <p class="inputlabel">University Registration Number:</p>
        <input class="inputfield" type="text" name="regno"/>
        
        <p class="inputlabel">Website URL:</p>
        <input class="inputfield" type="text" name="weburl"/>
        
        <p class="inputlabel">E-mail:</p>
        <input class="inputfield" type="text" name="email"/>
        
        <hr/>
        <p class="inputlabel">Username:</p>
        <input class="inputfield" type="text" name="uname"/>
        
        <p class="inputlabel">Password:</p>
        <input class="inputfield" type="password" name="pwd"/>
        
        <p class="inputlabel">Repeat Password:</p>
        <input class="inputfield" type="password" name="rptpwd"/>
        
        <input class="inputfield" type="hidden" name="type" value="university"/>
        <hr/>
        <!--<input class="btntype2" type="reset" value="Reset"/>-->
        <input class="btntype2" type="submit" value="Register"/>
        
    </form>
    </div>
    </div>
</body>
</html>
