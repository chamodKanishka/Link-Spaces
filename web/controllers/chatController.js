$('.chat-close').click(function () {
    $('#chat').hide();
})

$('.date_radio').click(function () {
    console.log(this.value)
    $.ajax(
        {
            type: "post",
            url: "http://" + window.location.hostname + ":8080/events",
            data: {
                eventDate: this.value
            },
            success: function (response) {

            },
            error: function () {

            }
        }
    );
})