package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.WikiCase;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

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
        WikiCase wikiCase = dbconn.getAWikiCase(caseId);
        dbconn.deleteWikiCase(caseId);
        dbconn.deleteWikiPage(wikiCase.getWikiPage());
    }

}
