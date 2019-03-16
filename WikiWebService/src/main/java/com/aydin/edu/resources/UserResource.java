package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.UserInfo;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/user")
public class UserResource {

    DBConn dbconn = new DBConn("teambravo", "teambravo123");
    @Path("/authentication")
    @Produces(MediaType.APPLICATION_JSON)
    @POST
    public String authentication(@HeaderParam("email") String email, @HeaderParam("password") String password){
        return dbconn.authenticator(email, password);
    }

    @GET
    @Path("/{userId}")
    @Produces(MediaType.APPLICATION_XML)
    public UserInfo getUserInfo(@PathParam("userId") int userId){
        return dbconn.getUserInfo(userId);   
    }



}
