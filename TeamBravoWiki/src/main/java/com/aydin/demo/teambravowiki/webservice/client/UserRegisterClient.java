package com.aydin.demo.teambravowiki.webservice.client;

import com.aydin.demo.teambravowiki.model.RegisterUser;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;


public class UserRegisterClient {
    public String registerUser(RegisterUser user){
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:8084/WikiWebService_war/webapi/user/register");
        System.out.println(webResource);
        ClientResponse response = webResource.type("application/xml").post(ClientResponse.class, user);
        if(response.getStatus() != 200){
            throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
        }
        client.destroy();
        return response.getEntity(String.class);
    }
}
