<jsp:include page="header.jsp"/>
<table id="tbl" align="center">
    <tr>
        <td><b>Event Title:</b></td>
        <td><textarea rows="1" cols="30"></textarea></td>
    </tr>
    <br>
    <br>
    <tr>
        <td><b>Date & Time:</b></td>
        <td><form action="/acton.php"><input type="date" name="startDate"></form>
            <form action="/acton.php"><input type="time" name="startTime"></form>
            to
            <form action="/acton.php"><input type="date" name="endDate"></form>
            <form action="/acton.php"><input type="time" name="endTime"></form>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><lable class="cont"><input type="checkbox" name="date" value="month">This is a virtual event</lable></td>
    </tr>
    <br>
    <br>
    <tr>
        <td><b>venue name</b></td>
        <td><textarea rows="1" cols="30"></textarea>
            <br><lable class="cont">EX. "Carriegie Hall"</lable></td>

    </tr>
    <br>
    <br>
    <tr>
        <td><b>location</b></td>
        <td><textarea rows="1" cols="30"></textarea>
            <br>
            <lable class="cont">EX. "184 Main rd Galle"</lable>
        </td>
    </tr>
    <br>
    <br>
    <tr>
        <td><b>Website</b></td>
        <td>
            <textarea rows="1" cols="30">https://</textarea>
        </td>
    </tr>
    <tr>
        <td><b>Are you attending?</b></td>
        <td>
            <input type="radio" name="abc" value="attend">I'm attending
            <input type="radio" name="abc" value="inter">I'm interested
            <input type="radio" name="abc" value="not">I'm not attending
        </td>
    </tr>
    <tr>
        <td><b>Are you Organizing?</b></td>
        <td><lable class="cont"><input type="checkbox" name="date" value="month">Yes, I am organizing this event</lable>
            <br>
            <br>
            <b>add a discription</b>
            <br>
            <br>
            <br>
            <button class="tablinks" onclick="openEvent(event,'find')" id="">Publish Event</button>
            or <form><button> cancel</button></form>
        </td>
    </tr>
</table>