package com.aydin.edu.DBImageInserter;

import com.aydin.edu.dbconnection.DBConn;

import java.io.File;
import java.io.FileInputStream;
import java.util.Base64;

public class ImageInserter {
    public static void main(String[] args) {
        DBConn dbconn = new DBConn("teambravo", "teambravo123");
        try{
            File file = new File("C:\\eto.jpg");
            FileInputStream fis = new FileInputStream(file);
            byte [] byte_array = new byte[(int)file.length()];
            fis.read(byte_array);
            String encodedImage = Base64.getEncoder().encodeToString(byte_array);
            dbconn.uploadUserImage(1, encodedImage);
        }catch(Exception e){
            System.out.println("sleam");
        }

    }
}
