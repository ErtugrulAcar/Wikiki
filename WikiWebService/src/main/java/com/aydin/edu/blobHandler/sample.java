package com.aydin.edu.blobHandler;

import com.aydin.edu.dbconnection.DBConn;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.WritableRaster;
import java.io.*;

public class sample {
    public static void main(String[] args) {
        try{
            File file = new File("C:\\einstein.jpg");
            BufferedImage bufferedImage = ImageIO.read(file);
            WritableRaster raster = bufferedImage.getRaster();
            DataBufferByte data = (DataBufferByte) raster.getDataBuffer();

            byte []byte_array = data.getData();
            System.out.println(byte_array.length);
            /*
            for(byte bit : byte_array)
                 System.out.print(bit);
            */

            OutputStream out = new BufferedOutputStream(new FileOutputStream("newImg.jpg"));
            out.write(byte_array);
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }

    }

}
