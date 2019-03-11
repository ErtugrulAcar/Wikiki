package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/user")
public class UserResource {

    DBConn dbconn = new DBConn("teambravo", "teambravo123");
    @Path("/authentication")
    @Produces(MediaType.TEXT_PLAIN)
    @POST
    public String authentication(@HeaderParam("email") String email, @HeaderParam("password") String password){
        if(dbconn.authenticator(email, password)) return "Giris onaylandı";
        else return "Hatalı sifre veya parola";
    }

}
