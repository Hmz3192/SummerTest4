package com.hmz.ssm.model;

import java.util.Date;

public class Message {
    private Integer id;

    private String message;

    private String description;

    private String picurl;

    private Date date;

    public Message(Integer id, String message, String description, String picurl, Date date) {
        this.id = id;
        this.message = message;
        this.description = description;
        this.picurl = picurl;
        this.date = date;
    }

    public Message() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getPicurl() {
        return picurl;
    }

    public void setPicurl(String picurl) {
        this.picurl = picurl == null ? null : picurl.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}