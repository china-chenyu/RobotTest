package com.spring.project.Entity;

public class Student {
    private Integer id;

    private String username;

    private String password;

    private String school;

    private String processionname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getProcessionname() {
        return processionname;
    }

    public void setProcessionname(String processionname) {
        this.processionname = processionname == null ? null : processionname.trim();
    }
}