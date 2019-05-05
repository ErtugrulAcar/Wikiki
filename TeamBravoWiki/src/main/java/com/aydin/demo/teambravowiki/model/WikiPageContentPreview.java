package com.aydin.demo.teambravowiki.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class WikiPageContentPreview {
    private String header;
    private String fistPofPageContent;
    private String image;

    public WikiPageContentPreview(){}
    public WikiPageContentPreview(String header, String fistPofPageContent, String image) {
        this.header = header;
        this.fistPofPageContent = fistPofPageContent;
        this.image = image;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getFistPofPageContent() {
        return fistPofPageContent;
    }

    public void setFistPofPageContent(String fistPofPageContent) {
        this.fistPofPageContent = fistPofPageContent;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
