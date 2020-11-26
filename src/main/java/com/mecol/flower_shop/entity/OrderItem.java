package com.mecol.flower_shop.entity;



public class OrderItem {
    private Integer itemid;

    private Integer count;

    private Double subtotal;

    private Integer pid;

    private Integer oid;

    //订单项中商品的外键
    private Flower product;

    //订单项中的Order外键
    private Order order;

    public Flower getProduct() {
        return product;
    }

    public void setProduct(Flower product) {
        this.product = product;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Double subtotal) {
        this.subtotal = subtotal;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }
}