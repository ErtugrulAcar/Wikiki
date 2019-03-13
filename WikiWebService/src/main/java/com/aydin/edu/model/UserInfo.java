package com.aydin.edu.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserInfo {
    private int userId;
    private String name;
    private String lastname;
    private boolean emailverify;
    private String phone_number;
    private int userDegree;

    public UserInfo() {}
    public UserInfo(int userId, String name, String lastname, boolean emailverify, String phone_number, int userDegree) {
        this.userId = userId;
        this.name = name;
        this.lastname = lastname;
        this.emailverify = emailverify;
        this.phone_number = phone_number;
        this.userDegree = userDegree;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public boolean isEmailverify() {
        return emailverify;
    }

    public void setEmailverify(boolean emailverify) {
        this.emailverify = emailverify;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public int getUserDegree() {
        return userDegree;
    }

    public void setUserDegree(int userDegree) {
        this.userDegree = userDegree;
    }
}
