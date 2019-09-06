package com.springmvc.entity;

import java.util.Date;

public class SensorData {
    private Integer id;

    private Integer direction;

    private Integer springklerId;

    private Date rTime;

    private String tData;

    private String hData;

    private String sData;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDirection() {
        return direction;
    }

    public void setDirection(Integer direction) {
        this.direction = direction;
    }

    public Integer getSpringklerId() {
        return springklerId;
    }

    public void setSpringklerId(Integer springklerId) {
        this.springklerId = springklerId;
    }

    public Date getrTime() {
        return rTime;
    }

    public void setrTime(Date rTime) {
        this.rTime = rTime;
    }

    public String gettData() {
        return tData;
    }

    public void settData(String tData) {
        this.tData = tData;
    }

    public String gethData() {
        return hData;
    }

    public void sethData(String hData) {
        this.hData = hData;
    }

    public String getsData() {
        return sData;
    }

    public void setsData(String sData) {
        this.sData = sData;
    }
}