package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.*;

import javax.print.attribute.standard.Media;
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

    @POST
    @Path("/register")
    @Consumes(MediaType.APPLICATION_XML)
    @Produces(MediaType.TEXT_PLAIN)
    public String registerUser(RegisterUser registerUser){
        System.out.println("REgisterdasınız");
        return dbconn.registerUser(registerUser);
    }

    @PUT
    @Path("updateLinks/{userId}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.TEXT_PLAIN)
    public String updateLinks(@PathParam("userId") int userid, UserLinks userLinks){
        return dbconn.updateLinks(userid, userLinks);
    }

    @PUT
    @Path("updateBio/{userId}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.TEXT_PLAIN)
    public String updateBio(@PathParam("userId") int userid, UserBio userBio){
        return dbconn.updateBio(userid, userBio);
    }

    @PUT
    @Path("updateInterest/{userId}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.TEXT_PLAIN)
    public String updateInterest(@PathParam("userId")int userid, UserInterest userInterest){
        return dbconn.updateInterest(userid, userInterest);
    }

    @PUT
    @Path("updateEmailPhone/{userId}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.TEXT_PLAIN)
    public String updateEmailPhone(@PathParam("userId")int userid, UserEmailPhone userEmailPhone){
        return dbconn.updateEmailandPhone(userid, userEmailPhone);
    }



}
