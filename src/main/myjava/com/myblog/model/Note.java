package com.myblog.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by caosong on 2017/7/22.
 */
public class Note implements Serializable{
    private int id;
    private String title;
    private String ads;
    private String content;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date creatdate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAds() {
        return ads;
    }

    public void setAds(String ads) {
        this.ads = ads;
    }

    public Date getCreatdate() {
        return creatdate;
    }

    public void setCreatdate(Date creatdate) {
        this.creatdate = creatdate;
    }



}
