$('#searchBtn').click(function () {
    $.ajax(
        {
            type: "post",
            url: window.location.origin + "/getJobs",
            data: {
                job_title: $('#job-title').val(),
                job_location: $('#job-location').val(),
                job_exp: $('#job-exp').val()
            },
            success: function (response) {
                var obj = JSON.parse(response);
                console.log(obj.length)
                var resText = '' +
                    '<table border="1px" style="width: 100%">';
                for (var i = 0; i < obj.length; i++) {
                    resText +=
                        '<tr>' +
                        '<td>' + obj[i] +
                        '</td>' +
                        '</tr>'
                }
                resText += '</table>';
                $('#jobs-div').html(resText);
            },
            error: function () {

            }
        }
    );
})