<%@ page import="model.JobDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="controller.db_controller.JobController" %><%--
  Created by IntelliJ IDEA.
  User: Moraaa
  Date: 4/6/2019
  Time: 7:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body class="container-fluid">
<style>
    .headerText:hover {
        font-weight: bold;
    }
</style>

<div class="row" style="background-color: #d3a308;color: #795d04;font-size: 20px;padding: 10px;text-align: center">
    <div class="col-sm-4" style="text-align: left;font-weight: bold"><span style="border-right: 2px solid #795d04;padding-right: 50px;padding-left: 20px">JOB OPPORTUNITIES</span></div>
    <div class="col-sm-2"><a href="index.jsp" style="text-decoration: none;color: black"><span class="headerText">Home</span></a></div>
    <div class="col-sm-2" style="font-weight: bold"><a href="index.jsp" style="text-decoration: none;color: black"><span class="headerText">Search Job</span></a></div>
    <div class="col-sm-2"><a href="index.jsp" style="text-decoration: none;color: black"><span class="headerText">Post Job</span></a></div>
    <div class="col-sm-2"><a href="index.jsp" style="text-decoration: none;color: black"><span class="headerText">Post Resume</span></a></div>
</div>

<div class="row" style="font-size: 25px;margin-top: 90px">
    <div class="col-sm-12" style="text-align: center;font-weight: bold"><span style="border: 1px solid #d3a308;padding: 10px;padding-left: 30px;padding-right: 30px;border-radius: 10px">Browse Jobs</span></div>
</div>

<div class="row" style="margin-top: 70px">
    <div class="col-sm-3" style="padding-right: 60px;padding-left: 60px;text-align: center">Job Title</div>
    <div class="col-sm-3" style="padding-right: 60px;padding-left: 60px;text-align: center">Location</div>
    <div class="col-sm-3" style="padding-right: 60px;padding-left: 60px;text-align: center">Experience</div>
</div>

<div class="row" style="margin-top: 5px">
    <div class="col-sm-3" >
        <select class="form-control" id="job-title">
            <%
                {
                    ArrayList<JobDTO> jobs = JobController.getJobs();
                    for (JobDTO jobDTO : jobs) {
            %>
            <option value="<%= jobDTO.getJobTitle()%>"><%= jobDTO.getJobTitle()%></option>
            <%
                    }
                }
            %>
        </select>
    </div>
    <div class="col-sm-3" >
        <select class="form-control" id="job-location">
            <option>cdscn</option>
        </select>
    </div>
    <div class="col-sm-3" >
        <select class="form-control" id="job-exp">
            <option>cdscn</option>
        </select>
    </div>
    <div class="col-sm-3" >
        <button id="searchBtn" class="btn btn-warning" style="left: 50%;transform: translateX(-50%);position: relative;font-size: 18px;width: 100%">Search</button>
    </div>
</div>

<div class="row" style="margin-top: 100px">
    <div class="col-sm-12" id="jobs-div"></div>
</div>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="controller/jobsController.js"></script>
</body>
</html>
