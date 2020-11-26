package com.mecol.flower_shop.service;

import com.mecol.flower_shop.entity.OrderItem;

import java.util.List;

public interface OrderItemService {
    void insert(OrderItem orderItem);

    List<OrderItem> findOrderItem(Integer oid);
}
