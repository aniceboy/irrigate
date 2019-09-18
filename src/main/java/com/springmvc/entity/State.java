package com.springmvc.entity;

public class State {
    private Integer id;

    private String areaId;

    private Integer springklerSn;

    private Integer direction;

    private Integer state1;

    private Integer state2;

    private Integer time;

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

    public Integer getState1() {
        return state1;
    }

    public void setState1(Integer state1) {
        this.state1 = state1;
    }

    public Integer getState2() {
        return state2;
    }

    public void setState2(Integer state2) {
        this.state2 = state2;
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }
}