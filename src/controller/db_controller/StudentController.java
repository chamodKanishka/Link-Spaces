package controller.db_controller;


import db.Dbcon;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

public class StudentController {


    public void insert(HttpServletRequest request){
        String conn = "jdbc:mysql://localhost:3306/linkspaces";
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        String type = request.getParameter("type");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String dob = request.getParameter("dob");
        String email = request.getParameter("email");
        String uni = request.getParameter("university");
        String index = request.getParameter("index");
        UserController user = new UserController();
        Dbcon db = new Dbcon();

        int id = -1;

        try{
            id = user.insert(uname, pwd, type);
            Connection con = db.connect(conn);
            String query = "insert into students values("+id+",'"+fname+"','"+lname+"','"+email+"','"+dob+"','"+uni+"','"+index+"')";
            PreparedStatement st = con.prepareStatement(query);
            st.execute();

            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }

}
