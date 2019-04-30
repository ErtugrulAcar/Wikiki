package com.aydin.edu.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserLinks {
    private String facebook;
    private String twitter;
    private String instagram;
    private String linkedIn;

    public UserLinks() {}

    public UserLinks(String facebook, String twitter, String instagram, String linkedIn) {
        this.facebook = facebook;
        this.twitter = twitter;
        this.instagram = instagram;
        this.linkedIn = linkedIn;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public String getLinkedIn() {
        return linkedIn;
    }

    public void setLinkedIn(String linkedIn) {
        this.linkedIn = linkedIn;
    }
}


