package com.aydin.demo.teambravowiki.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserPageContext {
    private int userid;
    private String username;
    private String userlastname;
    private String email;
    private String userbio;
    private String userinterest;
    private String userdegree;
    private String phonenumber;

    public UserPageContext(){}

    public UserPageContext(int userid, String username, String userlastname, String email, String userbio, String userinterest, String userdegree, String phonenumber) {
        this.userid = userid;
        this.username = username;
        this.userlastname = userlastname;
        this.email = email;
        this.userbio = userbio;
        this.userinterest = userinterest;
        this.userdegree = userdegree;
        this.phonenumber = phonenumber;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserlastname() {
        return userlastname;
    }

    public void setUserlastname(String userlastname) {
        this.userlastname = userlastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserbio() {
        return userbio;
    }

    public void setUserbio(String userbio) {
        this.userbio = userbio;
    }

    public String getUserinterest() {
        return userinterest;
    }

    public void setUserinterest(String userinterest) {
        this.userinterest = userinterest;
    }

    public String getUserdegree() {
        return userdegree;
    }

    public void setUserdegree(String userdegree) {
        this.userdegree = userdegree;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }
}
