package com.aydin.demo.teambravowiki.webservice.client;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.aydin.demo.teambravowiki.model.UserInfo;
public class UserProfileClient {

    public UserInfo getUserInfo(int userId){
        try{
            Client client = Client.create();
            WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/user").path(Integer.toString(userId));
            System.out.println(webResource);
            ClientResponse response = webResource.accept("application/xml").get(ClientResponse.class);
            if(response.getStatus() != 200){
                throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
            }
           return response.getEntity(UserInfo.class);
        }catch (Exception e){
            System.out.println("Have a problem when getting user info " + e.getLocalizedMessage());
        }
        return null;
    }
}
