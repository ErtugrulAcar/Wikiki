package com.aydin.demo.teambravowiki.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserInfo {
    private int userId;
    private String name;
    private String lastName;
    private boolean verify;
    private String phoneNumber;
    private int userDegree;

    public UserInfo(){}

    public UserInfo(int userId, String name, String lastName, boolean verify, String phoneNumber, int userDegree){
        this.userId = userId;
        this.name = name;
        this.lastName = lastName;
        this.verify = verify;
        this.phoneNumber = phoneNumber;
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

    public String getLastName() {
        return lastName;
    }

    public void setLastname(String lastname) {
        this.lastName = lastname;
    }

    public boolean isVerify() {
        return verify;
    }

    public void setVerify(boolean verify) {
        this.verify = verify;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getUserDegree() {
        return userDegree;
    }

    public void setUserDegree(int userDegree) {
        this.userDegree = userDegree;
    }
}
