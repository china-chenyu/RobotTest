package com.spring.project.Entity;

public class Matchsuser {
    private Integer id;

    private String matchid;

    private String userid;

    private String school;

    private String processionname;

    private String name;

    private String ntel;

    private String personnel;

    private String teacher;

    private String ttel;

    private String matchs;

    private String state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMatchid() {
        return matchid;
    }

    public void setMatchid(String matchid) {
        this.matchid = matchid == null ? null : matchid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNtel() {
        return ntel;
    }

    public void setNtel(String ntel) {
        this.ntel = ntel == null ? null : ntel.trim();
    }

    public String getPersonnel() {
        return personnel;
    }

    public void setPersonnel(String personnel) {
        this.personnel = personnel == null ? null : personnel.trim();
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher == null ? null : teacher.trim();
    }

    public String getTtel() {
        return ttel;
    }

    public void setTtel(String ttel) {
        this.ttel = ttel == null ? null : ttel.trim();
    }

    public String getMatchs() {
        return matchs;
    }

    public void setMatchs(String matchs) {
        this.matchs = matchs == null ? null : matchs.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }
}