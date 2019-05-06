package com.aydin.edu.resources;

import com.aydin.edu.dbconnection.DBConn;
import com.aydin.edu.model.Country;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/countries")
public class ContryResource {
    DBConn dbconn = new DBConn("teambravo", "teambravo123");

    @GET
    @Path("/all/json")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Country> getCountries_asJSON(){
        return dbconn.getAllCountries();
    }
    @GET
    @Path("/all/xml")
    @Produces(MediaType.APPLICATION_XML)
    public List<Country> getCountries_asXML(){
        return dbconn.getAllCountries();
    }
}


