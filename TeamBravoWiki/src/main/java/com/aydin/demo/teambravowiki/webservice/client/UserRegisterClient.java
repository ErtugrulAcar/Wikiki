package com.aydin.demo.teambravowiki.webservice.client;

import com.aydin.demo.teambravowiki.model.RegisterUser;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import javax.ws.rs.core.MediaType;


public class UserRegisterClient {
    public static String registerUser(RegisterUser user){
        Client client = Client.create();
        WebResource webResource = client.resource("localhost:8084/WikiWebService_war/webapi/user/register");
        System.out.println(webResource);
        WebResource.Builder wr = webResource.accept("text/plain").entity(user, MediaType.APPLICATION_XML);
        ClientResponse response = wr.post(ClientResponse.class);
        if(response.getStatus() != 200){
            throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
        }
        return response.getEntity(String.class);
    }

    public static void main(String[] args) {
        String st = registerUser(new RegisterUser("Eto", "CAr", "5222222222", "ertugrulsadalm", "123546800"));
        System.out.println(st);
    }
}
