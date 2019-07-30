package controller.url_controller.auth;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import java.io.IOException;

import controller.db_controller.IndustrialController;
import controller.db_controller.StudentController;
import controller.db_controller.UniversityController;
import model.IndustrialDTO;
import model.StudentDTO;
import model.UniversityDTO;
import model.UserDTO;

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String referer = request.getHeader("Referer");

        UserDTO user = new UserDTO();
        user.setUsername(request.getParameter("uname"));
        user.setPassword(request.getParameter("pwd"));
        user.setAccountType(request.getParameter("type"));
        user.setEmail(request.getParameter("email"));

        if(referer.contains("reg_students.jsp")){

            StudentController stc = new StudentController();
            StudentDTO std = new StudentDTO();

            std.setFname(request.getParameter("fname"));
            std.setLname(request.getParameter("lname"));
            std.setDob(request.getParameter("dob"));
            std.setUni(request.getParameter("university"));
            std.setIndex(request.getParameter("index"));

            stc.insert(std, user);

        } else if(referer.contains("reg_industrial.jsp")){

            IndustrialController inc = new IndustrialController();
            IndustrialDTO ind = new IndustrialDTO();

            ind.setName(request.getParameter("org"));
            ind.setOrgtype(request.getParameter("orgtype"));
            ind.setWeburl(request.getParameter("weburl"));

            inc.insert(ind, user);

        } else if(referer.contains("reg_uni.jsp")){

            UniversityController unic = new UniversityController();
            UniversityDTO unid = new UniversityDTO();

            unid.setName(request.getParameter("uni"));
            unid.setRegno(request.getParameter("regno"));
            unid.setWeburl(request.getParameter("weburl"));

            unic.insert(unid, user);

        }
        response.sendRedirect("/login.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
