package controller.db_controller;

import db.DBConnection;
import model.UniversityDTO;
import model.UserDTO;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UniversityController {

    public void insert(UniversityDTO universityDTO, UserDTO userDTO){

        String name = universityDTO.getName();
        String regno = universityDTO.getRegno();
        String weburl = universityDTO.getWeburl();
        UserController user = new UserController();
        int id = -1;

        try{

            id = user.insert(userDTO);
            Connection con = DBConnection.getDBConnection().getConnection();

            String query = "insert into university values("+id+",'"+name+"','"+regno+"','"+weburl+"')";
            PreparedStatement st = con.prepareStatement(query);
            st.execute();

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List getUniList(){

        List<String> uniList = new ArrayList<String>();

        try{

            Connection con = DBConnection.getDBConnection().getConnection();
            String query = "select name from university";
            PreparedStatement st = con.prepareStatement(query);
            ResultSet rs = st.executeQuery();

            while(rs.next()){
                uniList.add(rs.getString(1));
            }
//            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return uniList;
    }

//    public static void main(String[] args){
//        List<String> uniList = new ArrayList<>();
//        UniversityController uni = new UniversityController();
//        uniList = uni.getUniList();
//        for(String uniName: uniList){
//            System.out.println(uniName);
//        }
//    }
}
