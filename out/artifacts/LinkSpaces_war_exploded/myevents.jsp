<jsp:include page="header.jsp"/>
    <div id="mycontent_area" align="center">
        <h1>first content</h1>
        <hr>
        <h1>second content</h1>
        <hr>
        <h1>third content</h1>
        <hr>
        <h1>forth content</h1>
        <hr>
        <h3 align="center"><%= request.getParameter("event")%></h3>
        <h7>Venue:<%= request.getParameter("venue")%></h7>
        <h7>Location:<%= request.getParameter("location")%></h7>
        <h7>Website:<%= request.getParameter("website")%></h7>
        <h7>This is a virtual event:<%= request.getParameter("virtual")%></h7>
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
        <table align="center">
            <tr>
                <td>
                    <h7>Start Date:<%= request.getParameter("startDate")%></h7>
                </td>
                <td>
                    <h7>Start Time:<%= request.getParameter("startTime")%></h7>

                </td>
            </tr>
            <tr>
                <td>
                    <h7>End Time:<%= request.getParameter("endTime")%></h7>
                </td>
                <td>
                    <h7>End Date:<%= request.getParameter("endDate")%></h7>
                </td>
            </tr>
        </table>


        <p align="center"><%=request.getParameter("discription")%></p>
        <!--<h3 align="center"><%= request.getParameter("event")%></h3>
            <h3 align="center"><%= request.getParameter("event")%></h3>-->


    </div>