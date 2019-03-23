package com.aydin.demo.teambravowiki.webservice.client;

import com.aydin.demo.teambravowiki.model.UserPageContext;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

public class UserPageClient {
    public UserPageContext getPageContext(int userid){
        try{
            Client client = Client.create();
            WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/page/user").path(Integer.toString(userid));
            System.out.println(webResource);
            ClientResponse response = webResource.accept("application/xml").get(ClientResponse.class);
            if(response.getStatus() != 200){
                throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
            }
            client.destroy();
            return response.getEntity(UserPageContext.class);
        }catch(Exception e){
            System.out.println("Have a problem with userpage context " + e.getLocalizedMessage());
        }
        return null;
    }
}
