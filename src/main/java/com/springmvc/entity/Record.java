package com.springmvc.entity;

import java.util.Date;

public class Record {
    private Integer id;

    private String areaId;

    private Integer springklerSn;

    private Integer direction;

    private Date beginTime;

    private Date endTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public Integer getSpringklerSn() {
        return springklerSn;
    }

    public void setSpringklerSn(Integer springklerSn) {
        this.springklerSn = springklerSn;
    }

    public Integer getDirection() {
        return direction;
    }

    public void setDirection(Integer direction) {
        this.direction = direction;
    }

    public Date getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(Date beginTime) {
        this.beginTime = beginTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}