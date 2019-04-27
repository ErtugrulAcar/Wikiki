package com.aydin.edu.model;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class WikiPageContent {
    private String header;
    private String headerContent;
    private String pageContent;
    private String image;
    public WikiPageContent(){}

    public WikiPageContent(String header, String headerContent, String pageContent, String image) {
        this.header = header;
        this.headerContent = headerContent;
        this.pageContent = pageContent;
        this.image = image;
    }

    public String getHeader(){
        return header;
    }

    public void setHeader(String header){
        this.header = header;
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
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
