package com.aydin.edu.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class WikiPageRequest {
    private String wiki_page_header;
    private String wiki_page_header_content;
    private String wiki_page_content;
    private String wiki_page_image;
    private int wiki_page_owner;
    private String explanation;

    public WikiPageRequest(){}

    public WikiPageRequest(String wiki_page_header, String wiki_page_header_content, String wiki_page_content, String wiki_page_image, int wiki_page_owner, String explanation) {
        this.wiki_page_header = wiki_page_header;
        this.wiki_page_header_content = wiki_page_header_content;
        this.wiki_page_content = wiki_page_content;
        this.wiki_page_image = wiki_page_image;
        this.wiki_page_owner = wiki_page_owner;
        this.explanation = explanation;
    }

    public String getWiki_page_header() {
        return wiki_page_header;
    }

    public void setWiki_page_header(String wiki_page_header) {
        this.wiki_page_header = wiki_page_header;
    }
    public String getWiki_page_header_content() {
        return wiki_page_header_content;
    }

    public void setWiki_page_header_content(String wiki_page_header_content) {
        this.wiki_page_header_content = wiki_page_header_content;
    }

    public String getWiki_page_content() {
        return wiki_page_content;
    }

    public void setWiki_page_content(String wiki_page_content) {
        this.wiki_page_content = wiki_page_content;
    }

    public String getWiki_page_image() {
        return wiki_page_image;
    }

    public void setWiki_page_image(String wiki_page_image) {
        this.wiki_page_image = wiki_page_image;
    }

    public int getWiki_page_owner() {
        return wiki_page_owner;
    }

    public void setWiki_page_owner(int wiki_page_owner) {
        this.wiki_page_owner = wiki_page_owner;
    }

    public String getExplanation() {
        return explanation;
    }

    public void setExplanation(String explanation) {
        this.explanation = explanation;
    }
}
