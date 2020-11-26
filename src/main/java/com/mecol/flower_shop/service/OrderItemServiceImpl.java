package com.mecol.flower_shop.service;

import com.mecol.flower_shop.dao.OrderItemDao;
import com.mecol.flower_shop.entity.OrderItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderItemServiceImpl implements OrderItemService {

    @Autowired
    private OrderItemDao orderItemDao;
    @Override
    public void insert(OrderItem orderItem) {
        orderItemDao.insert(orderItem);
    }

    @Override
    public List<OrderItem> findOrderItem(Integer oid) {
        return orderItemDao.findOrderItem(oid);
    }
}
