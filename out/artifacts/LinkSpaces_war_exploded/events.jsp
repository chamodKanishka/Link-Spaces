<%--
  Created by IntelliJ IDEA.
  User: Chathuranga
  Date: 3/30/2019
  Time: 1:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<script src="controllers/hello.js"></script>
<link rel="stylesheet" href="assets/css/csss/hello.css"/>
<link rel="stylesheet" href="assets/css/csss/mainnn.css">
<div class="row">
    <div class="col-3" style="padding-right: 0px">

        <br>
        <div id="sidebar">
            <div id="form">
                <div id="wrapperdown">
                    <button class="search icon-down"><span>Search Panel</span></button>
                </div>
                <form method="get" action="results.php" enctype="multipart/form-data"/>
                <input id="txt" type="text" name="user_query" placeholder="Search Events" />
                <div class="container blue circleBehind"><a id="searchb">Search</a></div>
                </form>
            </div>
            <hr color="white">



            <ul id="Cats" type="none">
                <b id="side">Date:</b>
                <b id="side">2019</b>

                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month1">March-April 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month2">April-May 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month3">May-June 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month">June-July 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month">July-August 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month">August-September 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month">September-October 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month">October-November 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month">November-December 20</lable></li>
                <li><lable class="container"><input class="date_radio" type="radio" name="date" value="month">December-January 20</lable></li>
                <hr>
                <b id="side">2020</b>
                <li><lable class="container"><input type="radio" name="date" value="month">January-February 20</lable></li>
                <li><lable class="container"><input type="radio" name="date" value="month">February-March 20</lable></li>
                <hr color="white">
                <b id="side">Location:</b>
                <br/>
                <li><lable class="container"><input type="radio" name="venue" value="location">NSBM</lable></li>
                <li><lable class="container"><input type="radio" name="venue" value="location">Microsoft Sri Lanka</lable></li>
                <li><lable class="container"><input type="radio" name="venue" value="location">IBM Sri Lanka</lable></li>
                <li><lable class="container"><input type="radio" name="venue" value="location">WSO2</lable></li>
                <li><lable class="container"><input type="radio" name="venue" value="location">SLIIT</lable></li>
                <form><button>Add a new location</button></form>



            </ul>

        </div>

    </div>
    <div class="col-9" style="padding-left: 0px">
        <div id="content_area">
            <h1>first content</h1>
            <hr>
            <h1>second content</h1>
            <hr>
            <h1>third content</h1>
            <hr>
            <h1>forth content</h1>
            <hr>
            <%
                if(request.getParameter("event")!=null){
                    %>
                        <h3 align="center"><%=request.getParameter("event")%></h3>
                    <%
                }
            %>
            <%
                if(request.getParameter("venue")!=null){
                    %>
                        <h7>Venue:<%= request.getParameter("venue")%></h7>
                    <%
                }
            %>
            <%
                if(request.getParameter("venue")!=null){
            %>
            <h7>Location:<%= request.getParameter("location")%></h7>
            <%
                }
            %>
            <%
                if(request.getParameter("venue")!=null){
            %>
            <h7>Website:<%= request.getParameter("website")%></h7>
            <%
                }
            %><%
            if(request.getParameter("venue")!=null){
        %>
            <h7>This is a virtual event:<%= request.getParameter("virtual")%></h7>
            <%
                }
            %>
                <%
                    if(request.getParameter("abc") != null) {
                        if(request.getParameter("abc").equals("attend")) {
                            out.println("You are Attending");
                        }
                        if(request.getParameter("abc").equals("inter")) {
                            out.println("You are Interested");
                        }
                        if(request.getParameter("abc").equals("not")) {
                            out.println("You are not Attending");
                        }
                    }
                %>
            </h7>
            <table>
                <tr>
                    <td>
                        <%
                            if(request.getParameter("venue")!=null){
                        %>
                        <h7>Start Date:<%= request.getParameter("startDate")%></h7>
                        <%
                            }
                        %>
                    </td>
                    <td>
                        <%
                            if(request.getParameter("venue")!=null){
                        %>
                        <h7>Start Time:<%= request.getParameter("startTime")%></h7>
                        <%
                            }
                        %>


                    </td>
                </tr>
                <tr>
                    <td>
                        <%
                            if(request.getParameter("venue")!=null){
                        %>
                        <h7>End Time:<%= request.getParameter("endTime")%></h7>
                        <%
                            }
                        %>

                    </td>
                    <td>
                        <%
                            if(request.getParameter("venue")!=null){
                        %>
                        <h7>End Date:<%= request.getParameter("endDate")%></h7>
                        <%
                            }
                        %>

                    </td>
                </tr>
            </table>

            <%
                if(request.getParameter("venue")!=null){
            %>
            <p align="center"><%=request.getParameter("discription")%></p>
            <%
                }
            %>
            <%
                if(request.getParameter("venue")!=null){
            %>
            <hr>
            <%
                }
            %>
            <table>
                <tr><br>
                    <br>

                    <td>
                           <a class="button" href="#popup1">Comment</a>
                        </td>
                        <td><a class="button" href="comments.jsp">View Comments</a></td>
                    <td><a class="button" href="comments.jsp">Edit Event</a></td>
                </tr>
            </table>
            <div id="popup1" class="overlay">
                <div class="popup">
                    <h2>Type Your Comment Here</h2>
                    <a class="close" href="#">&times;</a>
                    <div class="content">
                        <form id="comment"><textarea  rows="5" cols="40"></textarea>
                            <br><br><a class="button" href="#">Post</a>
                        </form>
                    </div>
                </div>
            </div>



            <!-- Trigger/Open The Modal -->
            <!--<h3 align="center"><%= request.getParameter("event")%></h3>
            <h3 align="center"><%= request.getParameter("event")%></h3>-->


        </div>
    </div>
</div>
<div id="footer">
</div>
<div id="chat">
<!--<jsp:include page="chat.jsp"/>-->
</div>
<script src="controllers/chatController.js"></script>

</body>
</html>