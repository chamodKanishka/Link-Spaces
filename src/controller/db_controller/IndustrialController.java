package controller.db_controller;

import db.Dbcon;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

public class IndustrialController {

    String conn = "jdbc:mysql://localhost:3306/linkspaces";
    Dbcon db = new Dbcon();

    public void insert(HttpServletRequest request) {

        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        String type = request.getParameter("type");
        String name = request.getParameter("org");
        String orgtype = request.getParameter("orgtype");
        String email = request.getParameter("email");
        String weburl = request.getParameter("weburl");
        UserController user = new UserController();
        Dbcon db = new Dbcon();
        int id = -1;


        try{
            id = user.insert(uname, pwd, type, email);
            Connection con = db.connect(conn);

            String query = "insert into industrial values("+id+",'"+name+"','"+orgtype+"','"+weburl+"')";
            PreparedStatement st = con.prepareStatement(query);
            st.execute();
            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }


}
