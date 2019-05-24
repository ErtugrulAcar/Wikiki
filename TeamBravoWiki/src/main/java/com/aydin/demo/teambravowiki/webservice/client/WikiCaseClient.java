package com.aydin.demo.teambravowiki.webservice.client;

import com.aydin.demo.teambravowiki.model.WikiCase;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;

import java.util.List;

public class WikiCaseClient {
    public static List<WikiCase> getListOfCasesWithSuperriorId(int id){
        try{
            Client client = Client.create();
            WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/page/wiki/case").path(Integer.toString(id));
            System.out.println(webResource);
            List<WikiCase> list = webResource.accept("application/xml").get(new GenericType<List<WikiCase>>(){});
            client.destroy();
            if(list.isEmpty()){
                return null;
            }
            else{
                return list;
            }
        }catch(Exception e){
            System.out.println("Have a problem while getting wiki cases with superrior id : " + id + " with error: " + e.getLocalizedMessage());
        }
        return null;
    }
    public static void deleteWikiCaseWithId(int wikiCaseId){
        try{
            Client client = Client.create();
            WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/page/wiki/case/delete").path(Integer.toString(wikiCaseId));
            System.out.println(webResource);
            webResource.delete();
        }catch(Exception e){
            System.out.println("Have a problem while deleting a wiki case with id: "+ wikiCaseId + " with error: "+ e.getLocalizedMessage());
        }
    }

    public static void main(String[] args) {
        deleteWikiCaseWithId(5);
    }
}
