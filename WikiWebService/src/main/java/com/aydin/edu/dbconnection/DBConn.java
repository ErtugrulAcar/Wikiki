package com.aydin.edu.dbconnection;

import com.aydin.edu.model.UserInfo;

import java.sql.*;
import java.util.List;

public class DBConn {
    private static String serverID;
    private static String serverPassword;
    private static Connection con;
    private static PreparedStatement ps;
    private static ResultSet rs, rs2;

    public DBConn(String serverID,String serverPassword) {
        this.serverID = serverID;
        this.serverPassword = serverPassword;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://159.89.23.224:/?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
                    this.serverID, this.serverPassword);
        }catch(Exception e) {
            System.out.println("Have a problem while connecting DB Server :" + e.getLocalizedMessage());
        }
    }
    public boolean authenticator(String email, String password){
        try{
            ps = con.prepareStatement("select userid from wikidb.userpassword where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }
        }catch(Exception e){
            System.out.println("Have a problem with authentication " + e.getLocalizedMessage());
        }
        return false;
    }

    public UserInfo getUserInfo(int userid){
        try{
            ps = con.prepareStatement("select * from wikidb.userinfo where userid = ?");
            ps.setInt(1, userid);
            rs = ps.executeQuery();
            rs.next();

            boolean emailVerify = false;
            if(rs.getString("emailverify").equals("1"))    emailVerify = true;
            String phone_number = null;
            if(rs.getString("phone_number") != null)    phone_number = phone_number=rs.getString("phone_number");

            return new UserInfo(Integer.parseInt(rs.getString("userid")), rs.getString("name"), rs.getString("lastname"),
                        emailVerify, phone_number, Integer.parseInt(rs.getString("userdegree")));

        }catch(SQLException e){
            System.out.println("Have a problem while getting UserInfo " + e.getLocalizedMessage());
        }
        return null;
    }
}



