package com.aydin.demo.teambravowiki.model;

import com.google.gson.JsonObject;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class WikiPageContent {
    private String headerContent;
    private String pageContent;

    public WikiPageContent(){}

    public WikiPageContent(String headerContent, String pageContent) {
        this.headerContent = headerContent;
        this.pageContent = pageContent;
    }

    public String getHeaderContent() {
        return headerContent;
    }

    public void setHeaderContent(String headerContent) {
        this.headerContent = headerContent;
    }

    public String getPageContent() {
        return pageContent;
    }

    public void setPageContent(String pageContent) {
        this.pageContent = pageContent;
    }
}
