package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.UserPageContext;
import com.aydin.edu.model.WikiPageContent;
import com.aydin.edu.model.WikiPageContentPreview;
import com.aydin.edu.model.WikiPageRequest;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;


@Path("/page")
public class PageResource {
    DBConn dbconn = DBConn.getInstance();

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
    @Produces(MediaType.APPLICATION_XML)
    public WikiPageContentPreview getWikiPageContentPreview(@PathParam("wikipageid")int wikipageid){
        return dbconn.getWikiPageContentPreview(wikipageid);
    }

    @POST
    @Path("/wiki/add")
    @Consumes(MediaType.APPLICATION_JSON)
    public void addWikiPage(WikiPageRequest wikiPageRequest){
        dbconn.addWikiPage(wikiPageRequest);
    }
}
