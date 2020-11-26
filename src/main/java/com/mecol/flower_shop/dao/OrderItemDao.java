package com.mecol.flower_shop.dao;

import com.mecol.flower_shop.entity.OrderItem;

import java.util.List;

public interface OrderItemDao {
    void insert(OrderItem orderItem);

    List<OrderItem> findOrderItem(Integer oid);
}
