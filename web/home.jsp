<jsp:include page="header_home.jsp"/>
<%
    HttpSession sessionLogin = request.getSession(false);
    String uid = "";
    String username = "";
    if (sessionLogin != null) {
        if (sessionLogin.getAttribute("username") != null) {
            username = sessionLogin.getAttribute("username").toString();
        }
        if (sessionLogin.getAttribute("uid") != null) {
            uid = sessionLogin.getAttribute("uid").toString();
        }
    }
%>

<div class="row" style="height: 100%;font-size: 20px">
    <div class="col-2" style="text-align: left;background-color: #eeb809;color: #795d04">
        <div class="row" style="margin-top: 50px">
            <div class="col-12" style="text-align: center;font-weight: bold">
                Logged
            </div>
            <div class="col-12" style="text-align: center">
                <%= username%>
            </div>
        </div>
    </div>
    <div class="col-10">
        <div class="row" style="margin-top: 40px;font-weight: bold">
            <div class="col-6">
                <span id="btnEvents"
                      style="position: relative;left: 50%;transform: translateX(-50%);background-color: #eeb809;padding: 15px;border-radius: 40px;cursor: pointer">Events</span>
            </div>
            <div class="col-6">
                <span id="btnJobs"
                      style="position: relative;left: 50%;transform: translateX(-50%);background-color: #eeb809;color: #b48b07;padding: 15px;border-radius: 30px;cursor: pointer">Jobs</span>
            </div>
        </div>
        <div class="row" style="margin-top: 40px;font-size: 15px;margin-bottom: 40px">
            <div class="col-12" id="posts"></div>
        </div>
    </div>
</div>
<input type="hidden" id="uidLinkSpaces" value="<%= uid%>">
<input type="hidden" id="usernameLinkSpaces" value="<%= username%>">
<jsp:include page="chat.jsp"/>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="controller/homeController.js"></script>
<script src="controller/chatController.js"></script>
</body>
</html>
