<jsp:include page="header.jsp"/>
<form action = "events.jsp" method = "POST">
    <h1 align="center">Add Your Event</h1>
<table cellpadding="10px" id="tbl" align="center">
    <tr>
        <td><b>Event Title:</b></td>
        <td>
            <textarea rows="1" cols="30" input type = "text" name = "event"></textarea><!--<textarea rows="1" cols="30"></textarea>-->
        </td>
    </tr>
    <br>
    <br>
    <tr>
        <td><b>Date & Time:</b></td>
        <td><input type="date" name="startDate">
            <input type="time" name="startTime">
            to
            <input type="date" name="endDate">
            <input type="time" name="endTime">
        </td>
        <td><form action="events.jsp"><input type="date" name="endDate"></form></td>
    </tr>
    <tr>
        <td></td>
        <td><lable class="cont"><input type="checkbox" name="virtual" value="Yes">
            <input type="hidden" name="virtual" value="No">
                This is a virtual event</lable></td>
    </tr>
    <br>
    <br>
    <tr>
        <td><b>venue name</b></td>
        <td><textarea rows="1" cols="30" input type = "text" name = "venue"></textarea>
            <br><lable class="cont">EX. "Carriegie Hall"</lable></td>

    </tr>
    <br>
    <br>
    <tr>
        <td><b>location</b></td>
        <td><textarea rows="1" cols="30" input type = "text" name = "location"></textarea>
            <br>
            <lable class="cont">EX. "184 Main rd Galle"</lable>
        </td>
    </tr>
    <br>
    <br>
    <tr>
        <td><b>Website</b></td>
        <td>
            <textarea rows="1" cols="30" input type = "text" name = "website">https://</textarea>
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
        <td><lable class="cont"><input type="checkbox" name="date" value="month">Yes, I am organizing this event</lable></td></tr>
    <tr>
        <td><b>Add discription</b></td>
        <td><textarea rows="10" cols="30" input type = "text" name = "discription"></textarea></td>
    </tr>
    <tr>
        <td><b>Add image</b></td>
        <td><form action="events.jsp" method=post" enctype="multipart/form-data">
            <input type="file" name="fileToUpload" id="fileToUpload">
        </form> </td>
    </tr>
            <br>
            <br>
            <br>
            <br>
    <tr><td></td><td><button><input type = "submit" value = "Publish Event" /></button>
         to <form><button>cancel</button></form></td></tr>
</table>
</form>
