<%--
  Created by IntelliJ IDEA.
  User: Chathuranga
  Date: 3/30/2019
  Time: 1:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<div class="row">
    <div class="col-3" style="padding-right: 0px">
        <div id="sidebar">



            <div id="form">
                <form method="get" action="results.php" enctype="multipart/form-data"/>
                <input type="text" name="user_query" placeholder="Search Events" />
                <input type="submit" name="search" value="Search"/>
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
            <h1>fifth content</h1>
            <hr>
            <h1>first content</h1>
            <hr>
            <h1>second content</h1>
            <hr>
            <h1>third content</h1>
            <hr>
            <h1>forth content</h1>
            <hr>
            <h1>fifth content</h1>
            <hr>
            <h1>first content</h1>
            <hr>
            <h1>second content</h1>
            <hr>
            <h1>third content</h1>
            <hr>
            <h1>forth content</h1>
            <hr>
            <h1>fifth content</h1>
            <hr>
            <h1>first content</h1>
            <hr>
            <h1>second content</h1>
            <hr>
            <h1>third content</h1>
            <hr>
            <h1>forth content</h1>
            <hr>
            <h1>fifth content</h1>


        </div>
    </div>
</div>
<div id="footer">
</div>
<div id="chat">
<jsp:include page="chat.jsp"/>
</div>
<script src="controllers/chatController.js"></script>

</body>
</html>