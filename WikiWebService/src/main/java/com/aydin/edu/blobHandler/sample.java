package com.aydin.edu.blobHandler;

import com.aydin.edu.dbconnection.DBConn;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class sample {
    public static void main(String[] args) {
        try{
            File file = new File("C:\\einstein.jpg");
            FileInputStream fis = new FileInputStream(file);
            DBConn dbc = new DBConn("teambravo", "teambravo123");
            //dbc.uploadImage(fis);
            dbc.getImg();
        }catch(FileNotFoundException e){
            System.out.println(e.getLocalizedMessage());
        }

    }
}
