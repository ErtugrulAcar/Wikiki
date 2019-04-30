package com.aydin.edu.model;

public class UserEmailPhone {
    private String userEmail;
    private String userPhone;
    public UserEmailPhone() {}

    public UserEmailPhone(String userEmail, String userPhone) {
        this.userEmail = userEmail;
        this.userPhone = userPhone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }
}
