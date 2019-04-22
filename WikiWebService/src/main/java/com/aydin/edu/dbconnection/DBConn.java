package com.aydin.edu.dbconnection;

import java.io.*;
import java.sql.*;
import com.aydin.edu.model.UserInfo;
import com.aydin.edu.model.UserPageContext;
import com.aydin.edu.model.WikiPageContent;
import com.google.gson.JsonParser;

public class DBConn {
    private static String serverID;
    private static String serverPassword;
    private static Connection con;
    private static PreparedStatement ps;
    private static ResultSet rs, rs2, rs3, rs4;
    private static JsonParser jsonParser;
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
                    rs4.getString("degreename"), rs.getString("phone_number"), rs3.getString("facebook_link"), rs3.getString("twitter_link"),
                    rs3.getString("instagram_link"), rs3.getString("linkedIn_link"));
        }catch(SQLException e){
            System.out.println("Have a problem while getting UserPageContext " + e.getLocalizedMessage());
        }
        return null;
    }
    public WikiPageContent getWikiPageContext(int wikipageid){
        try{
            ps = con.prepareStatement("select * from wikidb.wikipage where wiki_page_id = ?");
            ps.setInt(1, wikipageid);
            rs = ps.executeQuery();
            rs.next();
            jsonParser = new JsonParser();
            /*return  new WikiPageContent(jsonParser.parse(rs.getString("wiki_page_header_content")).getAsJsonObject(),
                    jsonParser.parse(rs.getString("wiki_page_content")).getAsJsonObject());
            */
            return new WikiPageContent(jsonParser.parse(rs.getString("wiki_page_header_content")).getAsJsonObject().toString(),
                    jsonParser.parse(rs.getString("wiki_page_content")).getAsJsonObject().toString());
        }catch(SQLException e){
            System.out.println("Have a problem while getting WikiPageContext : " + e.getLocalizedMessage());
        }
        return null;
    }
    public void uploadUserImage(int id, String image){
        try{
            ps = con.prepareStatement("insert into wikidb.userImages values (?, ?)");
            ps.setInt(1, id);
            ps.setString(2, image);
            ps.executeUpdate();
        }catch(SQLException e){
            System.out.println("Have a problem while uploading userImage userId/imageId : " + id + " error: " + e.getLocalizedMessage());
        }
    }
    public void updateUserImage(int id, String image){
        try{
           ps = con.prepareStatement("update wikidb.userImages set image=? where id=?");
           ps.setString(1, image);
           ps.setInt(2, id);
           ps.executeUpdate();
        }catch(SQLException e){
            System.out.println("Have a problem while updating userImage userid/imageId : " + id +" error : " + e.getLocalizedMessage());
        }
    }
    public String getUserImage(int id){
        try{
           ps = con.prepareStatement("select * from wikidb.userImages where id=?");
           ps.setInt(1, id);
           rs = ps.executeQuery();
           rs.next();
           return rs.getString("image");
        }catch(SQLException e){
            System.out.println("Have a problem while getting userImage userId/imageId : " + id + " error: " + e.getLocalizedMessage());
        }
        return null;
    }
}



