package com.aydin.edu.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class RegisterUser {
    private String name;
    private String lastname;
    private String phone_number;
    private String email;
    private String password;

    public RegisterUser(){}

    public RegisterUser(String name, String lastname, String phone_number, String email, String password) {
        this.name = name;
        this.lastname = lastname;
        this.phone_number = phone_number;
        this.email = email;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
