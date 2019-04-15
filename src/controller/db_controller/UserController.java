package controller.db_controller;

import db.Dbcon;
import security.Encrypt;

import java.sql.*;

public class UserController {
    public int insert(String uname,String pwd,String type,String email){

        Encrypt enc = new Encrypt();
        int id = -1;
        String pwdEnc = enc.getHash(pwd);
        String query = "insert into users(username,password,user_type,email) values('"+uname+"','"+pwdEnc+"','"+type+"','"+email+"')";
        String query1 = "select uid from users where username = '"+uname+"' and password = '"+pwdEnc+"'";
        String conn = "jdbc:mysql://localhost:3306/linkspaces";
        Dbcon db = new Dbcon();

        try{
            Connection con = db.connect(conn);
            PreparedStatement stmt = con.prepareStatement(query);//insert the details into users table
            stmt.execute();//and generate the unique uid in the process

            PreparedStatement stmt1 = con.prepareStatement(query1);
            ResultSet rs = stmt1.executeQuery();//get the generated uid
            if(rs.next()){
                id = rs.getInt(1);
            } else
                System.out.println("error");

        } catch(Exception e){
            System.out.println(e);
        }

        return id;
    }
}
