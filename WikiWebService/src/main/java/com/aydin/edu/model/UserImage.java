package com.aydin.edu.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserImage {
    private int id;
    private String image;

    public UserImage() {}

    public UserImage(int id, String image) {
        this.id = id;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
