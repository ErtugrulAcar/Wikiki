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
    private String facebook_link;
    private String twitter_link;
    private String instagram_link;
    private String linkedIn_link;
    public UserPageContext(){}

    public UserPageContext(int userid, String username, String userlastname, String email, String userbio, String userinterest, String userdegree, String phonenumber, String facebook_link, String twitter_link, String instagram_link, String linkedIn_link) {
        this.userid = userid;
        this.username = username;
        this.userlastname = userlastname;
        this.email = email;
        this.userbio = userbio;
        this.userinterest = userinterest;
        this.userdegree = userdegree;
        this.phonenumber = phonenumber;
        this.facebook_link = facebook_link;
        this.twitter_link = twitter_link;
        this.instagram_link = instagram_link;
        this.linkedIn_link = linkedIn_link;
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
        ifNull(userbio);
        this.userbio = userbio;
    }

    public String getUserinterest() {
        return userinterest;
    }

    public void setUserinterest(String userinterest) {
        ifNull(userinterest);
        this.userinterest = userinterest;
    }

    public String getUserdegree() {
        return userdegree;
    }

    public void setUserdegree(String userdegree) {
        this.userdegree = userdegree.toUpperCase();
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        ifNull(phonenumber);
        this.phonenumber = phonenumber;
    }

    public String getFacebook_link() {
        return facebook_link;
    }

    public void setFacebook_link(String facebook_link) {
        ifNull(facebook_link);
        this.facebook_link = facebook_link;
    }

    public String getTwitter_link() {
        return twitter_link;
    }

    public void setTwitter_link(String twitter_link) {
        ifNull(twitter_link);
        this.twitter_link = twitter_link;
    }

    public String getInstagram_link() {
        return instagram_link;
    }

    public void setInstagram_link(String instagram_link) {
        ifNull(instagram_link);
        this.instagram_link = instagram_link;
    }

    public String getLinkedIn_link() {
        return linkedIn_link;
    }

    public void setLinkedIn_link(String linkedIn_link) {
        ifNull(linkedIn_link);
        this.linkedIn_link = linkedIn_link;
    }

    public String ifNull(String value){
        if(value == null)   return "-";
        else return value;
    }
}
