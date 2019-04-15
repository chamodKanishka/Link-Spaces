package controller.url_controller;

import controller.db_controller.UserController;
import model.UserDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sessionLogin = request.getSession(true);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDTO userDTO = UserController.chkLogin(username, password);
        if (userDTO != null) {
            sessionLogin.setAttribute("uid", userDTO.getUid());
            HttpSession ses = request.getSession();
            for (Cookie cookie : request.getCookies()) {
                if (cookie.getName().equals("JSESSIONID")) {
                    cookie.setMaxAge(60 * 60 * 24 * 365 * 10);
                }
            }
            response.sendRedirect("home.jsp");
        } else {
            response.sendRedirect("login.jsp?error=error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
