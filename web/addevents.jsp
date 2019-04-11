<jsp:include page="header.jsp"/>
<link rel="stylesheet" href="assets/css/csss/mainnnnn.css">
<form action="event_image" method="post" enctype="multipart/form-data">
    <h1 align="center">Add Your Event</h1>
    <table cellpadding="10px" id="tbl" align="center">
        <tr>
            <td><b>Event Title:</b></td>
            <td>
                <textarea rows="1" cols="30" input type="text" id="event" name="event"></textarea>
                <!--<textarea rows="1" cols="30"></textarea>-->
            </td>
        </tr>

        <tr>
            <td><b>Date & Time:</b></td>
            <td><input type="date" name="startDate">
                <input type="time" name="startTime">
                to
                <input type="date" name="endDate">
                <input type="time" name="endTime">
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <lable class="cont"><input type="checkbox" name="virtual" value="Yes">
                    <input type="hidden" name="virtual" value="No">
                    This is a virtual event
                </lable>
            </td>
        </tr>
        <tr>
            <td><b>venue name</b></td>
            <td><textarea rows="1" cols="30" input type="text" name="venue"></textarea>
                <br>
                <lable class="cont">EX. "Carriegie Hall"</lable>
            </td>
        </tr>
        <br>
        <br>
        <tr>
            <td><b>location</b></td>
            <td><textarea rows="1" cols="30" input type="text" name="location"></textarea>
                <br>
                <lable class="cont">EX. "184 Main rd Galle"</lable>
            </td>
        </tr>
        <br>
        <br>
        <tr>
            <td><b>Website</b></td>
            <td>
                <textarea rows="1" cols="30" input type="text" name="website">https://</textarea>
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
            <td>
                <lable class="cont"><input type="checkbox" name="date" value="month">Yes, I am organizing this event
                </lable>
            </td>
        </tr>
        <tr>
            <td><b>Add discription</b></td>
            <td><textarea rows="10" cols="30" input type="text" id="discription" name="discription"></textarea></td>
        </tr>
        <tr>
            <td><b>Add image</b></td>
            <td>
                <input type="file" name="file">
            </td>
        </tr>

        <br>
        <br>
        <br>
        <br>
        <tr>
            <td></td>
            <td>
                <button type="submit" id="publish_event">Publish Event</button>
                to
                    <button id="asd" type="button">cancel</button>
            </td>
        </tr>
    </table>
</form>
<%--<form action="event_image" id="event_images" method="post" enctype="multipart/form-data"></form>--%>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script>
    // $('#publish_event').click(function () {
    //     $('#event_images').append($('#fileToUpload').html());
    //     $('#event_images').unbind("submit")
    //     $('#event_images').submit();
    //     console.log($('#event_images').html())
    // })
    // $('#publish_event').click(function () {
    //     // console.log($('#event').val())
    //     var formData = new FormData();
    //     // formData.append('discription', $('#discription').val());
    //     // formData.append('event', $('#event').val());
    //     // Attach file
    //     formData.append('image', $('input[type=file]')[0].files[0]);
    //
    //     $.ajax({
    //         url: window.location.origin + "/event_image",
    //         data: formData,
    //         type: 'POST',
    //         enctype:'multipart/form-data',
    //         // contentType: false // NEEDED, DON'T OMIT THIS (requires jQuery 1.6+)
    //         processData: false // NEEDED, DON'T OMIT THIS
    //         // ... Other options like success and etc
    //     });
    //     $("#formData").unbind("submit");
    //     $('#formData').submit();
    //     // $.ajax(
    //     //     {
    //     //         type: "post",
    //     //         url: window.location.origin + "/addevent",
    //     //         data: formData,
    //     //         success: function (response) {
    //     //
    //     //         },
    //     //         error: function () {
    //     //
    //     //         }
    //     //     }
    //     // );
    // })
</script>