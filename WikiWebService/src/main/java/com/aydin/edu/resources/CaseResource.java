package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.WikiCase;

import javax.ws.rs.*;

@Path("/case")
public class CaseResource {
    static DBConn dbconn = DBConn.getInstance();
    @POST
    @Path("/approve/{caseId}")
    public void approveCase(@PathParam("caseId") int caseId){
        WikiCase wikiCase = dbconn.getAWikiCase(caseId);
        dbconn.deleteWikiCase(caseId);
        dbconn.verifyAWikiPage(wikiCase.getWikiPage());
    }
    @POST
    @Path("/reject/{caseId}")
    public void rejectCase(@PathParam("caseId")int caseId){
        System.out.println("Rejecting a Case " + caseId);
        WikiCase wikiCase = dbconn.getAWikiCase(caseId);
        dbconn.deleteWikiCase(caseId);
        dbconn.deleteWikiPage(wikiCase.getWikiPage());
    }
    @GET
    @Path("/getCaseIdWithWikiPageId/{caseId}")
    @Produces("text/plain")
    public String getCaseIdWithWikiPageId(@PathParam("caseId")int caseId){
        return Integer.toString(dbconn.getCaseIdWithWikiPageId(caseId));
    }

}
