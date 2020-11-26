package com.mecol.flower_shop.service;

import com.mecol.flower_shop.entity.Order;
import com.mecol.flower_shop.util.PageBean;

public interface OrderService {
    PageBean<Order> findByUid(Integer uid, int page);

    void save(Order order);

    Order findByOid(Integer oid);

    void update(Order currOrder);

    Order findOneByOid(Integer oid);

    PageBean<Order> findAllSecond(int page);
}
