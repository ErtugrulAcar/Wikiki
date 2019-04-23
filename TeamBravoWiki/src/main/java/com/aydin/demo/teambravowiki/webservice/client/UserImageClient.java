package com.aydin.demo.teambravowiki.webservice.client;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;


public class UserImageClient {
    public static String getUserImage(int id){
        Client client = Client.create();
        WebResource webResource = client.resource("http://104.248.129.101:8080/WikiWebService/webapi/image/user").path(Integer.toString(id));
        System.out.println(webResource);
        ClientResponse response = webResource.accept("text/plain").get(ClientResponse.class);
        if(response.getStatus() == 204){
            return "";
        }
        if(response.getStatus() != 200){
            throw new RuntimeException("Failed : HTTP error code " + response.getStatus());
        }
        client.destroy();
        return  response.getEntity(String.class);
    }
}
