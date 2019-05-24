package com.aydin.demo.teambravowiki.model;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

@XmlRootElement
public class WikiCase {
    private int id;
    private String explanation;
    private Date date;
    private int caseOwner;
    private int superrior;
    private int wikiPage;

    public WikiCase(){}
    public WikiCase(int id, String explanation, Date date, int caseOwner, int superrior, int wikiPage) {
        this.id = id;
        this.explanation = explanation;
        this.date = date;
        this.caseOwner = caseOwner;
        this.superrior = superrior;
        this.wikiPage = wikiPage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getExplanation() {
        return explanation;
    }

    public void setExplanation(String explanation) {
        this.explanation = explanation;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCaseOwner() {
        return caseOwner;
    }

    public void setCaseOwner(int caseOwner) {
        this.caseOwner = caseOwner;
    }

    public int getSuperrior() {
        return superrior;
    }

    public void setSuperrior(int superrior) {
        this.superrior = superrior;
    }

    public int getWikiPage() {
        return wikiPage;
    }

    public void setWikiPage(int wikiPage) {
        this.wikiPage = wikiPage;
    }
}
