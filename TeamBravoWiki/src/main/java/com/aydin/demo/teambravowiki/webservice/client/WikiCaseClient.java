package com.aydin.demo.teambravowiki.webservice.client;

import com.aydin.demo.teambravowiki.model.WikiCase;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
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

    public static void approveWikiCase(int wikiCaseId){
        Client client = Client.create();
        WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/case/approve").path(Integer.toString(wikiCaseId));
        System.out.println(webResource);
        webResource.post();
    }
    public static void rejectCase(int wikiCaseId){
        Client client = Client.create();
        WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/case/reject").path(Integer.toString(wikiCaseId));
        System.out.println(webResource);
        webResource.post();
    }
    public static int getCaseIdWithWikiPageId(int wikiPageId){
        Client client = Client.create();
        WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/case/getCaseIdWithWikiPageId").path(Integer.toString(wikiPageId));
        System.out.println(webResource);
        ClientResponse response = webResource.accept("text/plain").get(ClientResponse.class);
        if(response.getStatus() != 200){
            throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
        }
        client.destroy();
        return Integer.parseInt(response.getEntity(String.class));
    }

}
