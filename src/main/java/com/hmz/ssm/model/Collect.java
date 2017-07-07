package com.hmz.ssm.model;

public class Collect {
    private Integer id;

    private Integer uid;

    private Integer colId;

    public Collect(Integer id, Integer uid, Integer colId) {
        this.id = id;
        this.uid = uid;
        this.colId = colId;
    }

    public Collect() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getColId() {
        return colId;
    }

    public void setColId(Integer colId) {
        this.colId = colId;
    }
}