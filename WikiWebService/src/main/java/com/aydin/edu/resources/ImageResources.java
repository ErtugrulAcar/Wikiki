package com.aydin.edu.resources;


import com.aydin.edu.dbconnection.DBConn;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/image")
public class ImageResources {
    DBConn dbconn = new DBConn("teambravo", "teambravo123");
    @GET
    @Path("user/{id}")
    @Produces(MediaType.TEXT_PLAIN)
    public String getUserImage(@PathParam("id")int id){
        return dbconn.getUserImage(id);
    }
    @POST
    @Path("user/upload/{id}")
    @Consumes(MediaType.TEXT_PLAIN)
    public void uploadUserImage(@PathParam("id")int id, String image){
        dbconn.uploadUserImage(id, image);
    }
    @POST
    @Path("user/update/{id}")
    @Consumes(MediaType.TEXT_PLAIN)
    public void updateUserImage(@PathParam("id")int id, String image){
        dbconn.updateUserImage(id, image);
    }
}
