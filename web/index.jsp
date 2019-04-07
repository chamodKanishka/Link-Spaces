<%@ page import="model.JobDTO" %>
<%@ page import="controller.db_controller.JobController" %>
<%@ page import="java.util.ArrayList" %>
<html>
<meta name="viewport" content="width=device-width, in itial-scale=1">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<style>
    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #784;
    }

    .topnav {
        overflow: hidden;
        background-color: #333;
    }

    .topnav a {
        float: left;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }

    .topnav a.active {
        background-color: tomato;
        color: white;
    }
</style>
<br/><br/><br/>
<h1 style="text-align:center"> Job Opportunities</h1>
</head>
<body>

<div class="topnav">
    <a class="active" href="#home">Home</a>
    <a href="job">Search Job</a>
    <a href="post">Post a Job</a>
    <a href="resume">Post a Resume</a>
</div>

<div style="padding-left:16px">
    <br/>
    <h2 style="text-align:center">Browse for Jobs</h2>
    <p></p>
</div>

<form action="jobs" method="post" style="text-align:center">
    <%--  <input type="text" placeholder="Job Title" name="search">--%>

    <%--  <form class="example" action="/action_page.php"style="text-align:center">--%>
    <%--    <input type="text" placeholder="Job Location" name="search">--%>

    <%--    <form class="example" action="/action_page.php"style="text-align:center">--%>
    <%--      <input type="text" placeholder="Experience" name="search">--%>
    <%--      <button type="submit"><i class="fa fa-search"></i></button>--%>
    <%--    </form>--%>
    <select name="job">
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
<%--        <option value="huijkju8frgftr">huijkju8frgftr</option>--%>
<%--        <option value="ghftyfue4uherr">ghftyfue4uherr</option>--%>
    </select>

    <select name="location">
        <option>ufrytug</option>
        <option>uritbhhutyuwb</option>
        <option>rhnrutioifocur</option>
    </select>

    <select name="experience">
        <option>rju9p76ui4i89t7</option>
        <option>yhrevgtrtbvryt7fnucy</option>
        <option>uyt5785yunt6e5hfhyl</option>
    </select>

    <button type="submit">Search</button>
</form>
</body>
</html>
