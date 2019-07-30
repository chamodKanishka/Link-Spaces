package controller.db_controller;


import db.DBConnection;
import model.StudentDTO;
import model.UserDTO;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

public class StudentController {

    public void insert(StudentDTO studentDTO, UserDTO userDTO){

        String fname = studentDTO.getFname();
        String lname = studentDTO.getLname();
        String dob = studentDTO.getDob();
        String uni = studentDTO.getUni();
        String index = studentDTO.getIndex();
        UserController user = new UserController();

        int id = -1;

        try{
            id = user.insert(userDTO);
            Connection con = DBConnection.getDBConnection().getConnection();

            String query = "insert into students values("+id+",'"+fname+"','"+lname+"','"+dob+"','"+uni+"','"+index+"')";
            PreparedStatement st = con.prepareStatement(query);
            st.execute();
        } catch (Exception e){
            System.out.println(e);
        }
    }

}
