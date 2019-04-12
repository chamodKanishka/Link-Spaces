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
<link rel="stylesheet" href="assets/css/csss/mainnnnn.css">
<link rel="stylesheet" href="assets/css/csss/mainnnnnn.css">
<link rel="stylesheet" href="assets/css/csss/hideshow.css">
<link rel="stylesheet" href="assets/css/csss/commentToggle.css">
<div class="row">
    <div class="col-3" style="padding-right: 0px">

        <br>
        <input type="checkbox" name="toggle" id="toggle" />
        <label for="toggle"></label>
        <div class="container">
        </div>
        <div class="message">
          <div id="sidebar">
            <div id="form">
                <div id="wrapperdown">
                    <button class="search icon-down"><span>Search Panel</span></button>
                </div>
                <form action="/result.jsp"><textfield><input type="text" name="keyword"/></textfield>
                <br>
                <div class="container blue circleBehind"><a id="searchb">Search</a></div>
                </form>
            </div>
            <hr color="white">



            <ul id="Cats" class="container" type="none">
                <b id="side">Date:</b>
                <b id="side">2019</b>
                <li><input class="date_radio" type="radio" id="a-option" name="date"><label for="a-option">Feb-March 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="b-option" name="date"><label for="b-option">March-April 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="c-option" name="date"><label for="c-option">April-May 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="d-option" name="date"><label for="d-option">May-June 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="e-option" name="date"><label for="e-option">June-July 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="f-option" name="date"><label for="f-option">July-August 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="g-option" name="date"><label for="g-option">August-September 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="h-option" name="date"><label for="h-option">September-October 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="i-option" name="date"><label for="i-option">October-November 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="j-option" name="date"><label for="j-option">November-December 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="k-option" name="date"><label for="k-option">December-January 20</label><div class="check"></div></li>
                <hr>
                <b id="side">2020</b>
                <li><input class="date_radio" type="radio" id="l-option" name="date"><label for="l-option">January-February 20</label><div class="check"></div></li>
                <li><input class="date_radio" type="radio" id="m-option" name="date"><label for="m-option">February-March 20</label><div class="check"></div></li>
                <hr color="white">
                <b id="side">Location:</b>
                <br/>
                <li><input class="Location_radio" type="radio" id="n-option" name="venue"><label for="n-option">NSBM</label><div class="check"></div></li>
                <li><input class="Location_radio" type="radio" id="o-option" name="venue"><label for="o-option">Microsoft Sri Lanka</label><div class="check"></div></li>
                <li><input class="Location_radio" type="radio" id="p-option" name="venue"><label for="p-option">IBM Sri Lanka</label><div class="check"></div></li>
                <li><input class="Location_radio" type="radio" id="q-option" name="venue"><label for="q-option">WSO2</label><div class="check"></div></li>
                <li><input class="Location_radio" type="radio" id="r-option" name="venue"><label for="r-option">SLIIT</label><div class="check"></div></li>
                <li>
                <li><input><input type="checkbox" name="toggle" id="toggle" />
                    <label for="toggle">Close </label>
                </li>
                </li>




            </ul>

          </div>
        </div>

    </div>
    <div class="col-9" style="padding-left: 0px">
        <div id="content_area">
            <h1>first content</h1>
            <div class="ex3">
                <label for="item-3">View Event</label>
                <input type="checkbox" name="one" id="item-3" checked="false">
                <div class="hide3">
                    <div class="inner3">
                        <p>Equation billions upon billions! Courage of our questions decipherment, take root and flourish, cosmic ocean paroxysm of global death. Light years inconspicuous motes of rock and gas from which we spring something incredible is waiting to be known,
                            muse about!</p>
                        <p>Equation billions upon billions! Courage of our questions decipherment, take root and flourish, cosmic ocean paroxysm of global death. Light years inconspicuous motes of rock and gas from which we spring something incredible is waiting to be known,
                            muse about!</p>
                        <p>Equation billions upon billions! Courage of our questions decipherment, take root and flourish, cosmic ocean paroxysm of global death. Light years inconspicuous motes of rock and gas from which we spring something incredible is waiting to be known,
                            muse about!</p>
                    </div>
                </div>
            </div>
            <hr>
            <h1>second content</h1>
            <hr>
            <h1>third content</h1>
            <hr>
            <h1>forth content</h1>
            <hr>
            <h1>first content</h1>
            <hr>
            <h1>second content</h1>
            <hr>
            <h1>third content</h1>
            <hr>
            <h1>forth content</h1>
            <hr>
            <h1>first content</h1>
            <hr>
            <h1>second content</h1>
            <hr>
            <%
                if(request.getParameter("event")!=null){
                    %>
                        <h3 align="center"><%=request.getParameter("event")%></h3>
                    <%
                }
            %>
            <div class="ex3">
                <label for="item-3">View Event</label>
                <input type="checkbox" name="two" id="" checked="false">
                <div class="hide4">
                    <div class="inner4">
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