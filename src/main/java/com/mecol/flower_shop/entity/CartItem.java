package com.mecol.flower_shop.entity;

/**
 * 购物项对象 数据库中没有
 */

public class CartItem {
    private Flower product;	// 购物项中商品信息
    private int count;			// 购买某种商品数量
    private double subtotal;	// 购买某种商品小计
    public Flower getProduct() {
        return product;
    }
    public void setProduct(Flower product) {
        this.product = product;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    // 小计=商品数目*商品单价.
    public double getSubtotal() {
        return count * product.getShopPrice();
    }


}
