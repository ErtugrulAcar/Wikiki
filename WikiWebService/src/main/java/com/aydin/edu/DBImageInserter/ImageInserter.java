package com.aydin.edu.DBImageInserter;

import com.aydin.edu.dbconnection.DBConn;

import java.io.File;
import java.io.FileInputStream;
import java.util.Base64;

public class ImageInserter {
    public static void main(String[] args) {
        DBConn dbconn = DBConn.getInstance();
        try{
            File file = new File("C:\\alanturing.jpg");
            FileInputStream fis = new FileInputStream(file);
            byte [] byte_array = new byte[(int)file.length()];
            fis.read(byte_array);
            String encodedImage = "data:image/*;base64, " + Base64.getEncoder().encodeToString(byte_array);
            dbconn.uploadWikiImage(2, encodedImage);
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }

    }
}
