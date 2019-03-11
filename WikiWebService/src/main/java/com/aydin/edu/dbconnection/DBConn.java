package com.aydin.edu.dbconnection;

import java.sql.*;

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
            System.out.println("Have a problem while authentication " + e.getLocalizedMessage());
        }
        return false;
    }
}



