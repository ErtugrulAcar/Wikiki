package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.UserPageContext;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/page")
public class PageResource {
    DBConn dbconn = new DBConn("teambravo", "teambravo123");

    @GET
    @Path("/user/{userid}")
    @Produces(MediaType.APPLICATION_XML)
    public UserPageContext getUserPageCont(@PathParam("userid") int userid){
        return dbconn.getUserPageContext(userid);
    }
}
