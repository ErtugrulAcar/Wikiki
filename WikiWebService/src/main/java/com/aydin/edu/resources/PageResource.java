package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.UserPageContext;
import com.aydin.edu.model.WikiPageContent;
import com.aydin.edu.model.WikiPageContentPreview;

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
    @GET
    @Path("/wiki/{wikipageid}")
    @Produces(MediaType.APPLICATION_XML)
    public WikiPageContent getWikiPageContent(@PathParam("wikipageid") int wikipageid){
        return dbconn.getWikiPageContent(wikipageid);
    }
    @GET
    @Path("/wiki/preview/{wikipageid}")
    @Produces
    public WikiPageContentPreview getWikiPageContentPreview(@PathParam("wikipageid")int wikipageid){
        return dbconn.getWikiPageContentPreview(wikipageid);
    }

}
