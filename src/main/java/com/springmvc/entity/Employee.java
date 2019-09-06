package com.springmvc.entity;

public class Employee {
    private String en;

    private String name;

    private String password;

    private String areaan;

    private String post;

    public String getEn() {
        return en;
    }

    public void setEn(String en) {
        this.en = en;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAreaan() {
        return areaan;
    }

    public void setAreaan(String areaan) {
        this.areaan = areaan;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "en='" + en + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", areaan='" + areaan + '\'' +
                ", post='" + post + '\'' +
                '}';
    }
}