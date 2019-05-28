package com.aydin.demo.teambravowiki.webservice.client;

import com.aydin.demo.teambravowiki.model.WikiCase;
import com.aydin.demo.teambravowiki.model.WikiPageContent;
import com.aydin.demo.teambravowiki.model.WikiPageContentPreview;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;

import java.util.List;

public class WikiPageClient {
    public static WikiPageContent getWikiPageContent(int wikiPageId){
        try{
            Client client = Client.create();
            WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/page/wiki").path(Integer.toString(wikiPageId));
            System.out.println(webResource);
            ClientResponse response = webResource.accept("application/xml").get(ClientResponse.class);
            if(response.getStatus() != 200){
                throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
            }
            client.destroy();
            return response.getEntity(WikiPageContent.class);
        }catch(Exception e){
            System.out.println("(WikiPageClient) Have a problem while getting WikiPageContent : " + e.getLocalizedMessage());
        }
        return null;
    }
    public static WikiPageContentPreview getWikiPageContentPreview(int wikiPageId){
        try{
            Client client = Client.create();
            WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/page/wiki/preview").path(Integer.toString(wikiPageId));
            System.out.println(webResource);
            ClientResponse response = webResource.accept("application/xml").get(ClientResponse.class);
            if(response.getStatus() != 200){
                throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
            }
            client.destroy();
            return response.getEntity(WikiPageContentPreview.class);
        }catch(Exception e){
            System.out.println("(WikiPageClient) Have a problem while getting WikiPageContentPreview : " + e.getLocalizedMessage());
        }
        return null;
    }
    public static List<WikiPageContentPreview> getAllWikiPageContentPreviews(){
        try{
            Client client = Client.create();
            WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/page/wiki/preview/all");
            System.out.println(webResource);
            List<WikiPageContentPreview> list = webResource.accept("application/xml").get(new GenericType<List<WikiPageContentPreview>>(){});
            client.destroy();
            if(list.isEmpty()){
                return null;
            }
            return list;
        }catch(Exception e){
            System.out.println("(WikiPageClient) Have a problem while getting all WikiPageContentPreviews : " + e.getLocalizedMessage());
        }
        return null;
    }

}
