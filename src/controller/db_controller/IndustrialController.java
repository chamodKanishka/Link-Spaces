package controller.db_controller;

import db.DBConnection;
import model.IndustrialDTO;
import model.UserDTO;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

public class IndustrialController {

    public void insert(IndustrialDTO industrialDTO, UserDTO userDTO) {

        String name = industrialDTO.getName();
        String orgtype = industrialDTO.getOrgtype();
        String weburl = industrialDTO.getWeburl();
        UserController user = new UserController();
        int id = -1;


        try{
            id = user.insert(userDTO);
            Connection con = DBConnection.getDBConnection().getConnection();

            String query = "insert into industrial values("+id+",'"+name+"','"+orgtype+"','"+weburl+"')";
            PreparedStatement st = con.prepareStatement(query);
            st.execute();
        } catch (Exception e){
            System.out.println(e);
        }
    }


}
