package com.mecol.flower_shop.entity;

import java.util.List;

public class Category {
    private Integer cid;

    private String cname;

    //一级分类中存放二级分类的集合
    private List<CategorySecond> categoryseconds;

    public List<CategorySecond> getCategoryseconds() {
        return categoryseconds;
    }

    public void setCategoryseconds(List<CategorySecond> categoryseconds) {
        this.categoryseconds = categoryseconds;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }


}