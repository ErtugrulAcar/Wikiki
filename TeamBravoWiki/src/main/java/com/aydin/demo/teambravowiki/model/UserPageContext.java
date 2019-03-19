package com.aydin.demo.teambravowiki.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserPageContext {
    private int pageid;
    private int userid;
    private String userbio;
    private String userinterest;

    public UserPageContext(){}
    public UserPageContext(int pageid, int userid, String userbio, String userinterest) {
        this.pageid = pageid;
        this.userid = userid;
        this.userbio = userbio;
        this.userinterest = userinterest;
    }

    public int getPageid() {
        return pageid;
    }

    public void setPageid(int pageid) {
        this.pageid = pageid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
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
}
