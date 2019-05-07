package com.aydin.edu.resources;


import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.UserImage;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/image")
public class ImageResources {
    DBConn dbconn = DBConn.getInstance();
    @GET
    @Path("user/{id}")
    @Produces(MediaType.TEXT_PLAIN)
    public String getUserImage(@PathParam("id")int id){
        return dbconn.getUserImage(id);
    }
    @POST
    @Path("user/upload")
    @Consumes(MediaType.APPLICATION_JSON)
    public void uploadUserImage(UserImage userImage){
        System.out.println(userImage.getId());
        dbconn.uploadUserImage(userImage.getId(), userImage.getImage());
    }
    @POST
    @Path("user/update")
    @Consumes(MediaType.APPLICATION_JSON)
    public void updateUserImage(UserImage userImage){
        dbconn.updateUserImage(userImage.getId(), userImage.getImage());
    }


}
