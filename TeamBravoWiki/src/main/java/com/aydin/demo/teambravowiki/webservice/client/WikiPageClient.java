package com.aydin.demo.teambravowiki.webservice.client;

import com.aydin.demo.teambravowiki.model.WikiPageContent;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

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

}
