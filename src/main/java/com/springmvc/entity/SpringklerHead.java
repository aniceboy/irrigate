package com.springmvc.entity;

import java.util.Date;

public class SpringklerHead {
    private Integer springklerId;

    private String location;

    private Date installtime;

    private String state;

    public Integer getSpringklerId() {
        return springklerId;
    }

    public void setSpringklerId(Integer springklerId) {
        this.springklerId = springklerId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getInstalltime() {
        return installtime;
    }

    public void setInstalltime(Date installtime) {
        this.installtime = installtime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}