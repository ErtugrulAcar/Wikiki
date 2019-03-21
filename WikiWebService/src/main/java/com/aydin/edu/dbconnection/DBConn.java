package com.aydin.edu.dbconnection;

import java.sql.*;
import com.aydin.edu.model.UserInfo;
import com.aydin.edu.model.UserPageContext;

public class DBConn {
    private static String serverID;
    private static String serverPassword;
    private static Connection con;
    private static PreparedStatement ps;
    private static ResultSet rs, rs2, rs3, rs4;

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
    public String authenticator(String email, String password){
        try{
            ps = con.prepareStatement("select userid from wikidb.userpassword where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if(rs.next()){
                return rs.getString("userid");
            }
        }catch(Exception e){
            System.out.println("Have a problem with authentication " + e.getLocalizedMessage());
        }
        return "0";
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
            if(rs.getString("phone_number") != null)    phone_number = rs.getString("phone_number");
            return new UserInfo(Integer.parseInt(rs.getString("userid")), rs.getString("name"), rs.getString("lastname"),
                        emailVerify, phone_number, Integer.parseInt(rs.getString("userdegree")));

        }catch(SQLException e){
            System.out.println("Have a problem while getting UserInfo " + e.getLocalizedMessage());
        }
        return null;
    }
    public UserPageContext getUserPageContext(int userid){
        try{
            ps = con.prepareStatement("select * from wikidb.userinfo where userid = ?");
            ps.setInt(1, userid);
            rs = ps.executeQuery();
            rs.next();
            ps = con.prepareStatement("select * from wikidb.userpassword where userid= ?");
            ps.setInt(1, userid);
            rs2 = ps.executeQuery();
            rs2.next();
            ps=con.prepareStatement("select * from wikidb.userpage where userid= ?");
            ps.setInt(1, userid);
            rs3 = ps.executeQuery();
            rs3.next();
            ps = con.prepareStatement("select degreename from wikidb.degreeinfo where degreeid in (select userdegree from wikidb.userinfo where userid = ?)");
            ps.setInt(1, userid);
            rs4 = ps.executeQuery();
            rs4.next();
            return new UserPageContext(Integer.parseInt(rs.getString("userid")), rs.getString("name"),
                    rs.getString("lastname"), rs2.getString("email"),
                    rs3.getString("userbio"), rs3.getString("userinterest"),
                    rs4.getString("degreename"), rs.getString("phone_number"));
        }catch(SQLException e){
            System.out.println("Have a problem while getting UserPageContext " + e.getLocalizedMessage());
        }
        return null;
    }
}



