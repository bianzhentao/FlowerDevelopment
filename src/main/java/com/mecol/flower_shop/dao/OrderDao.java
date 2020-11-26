package com.mecol.flower_shop.dao;

import com.mecol.flower_shop.entity.Order;

import java.util.List;
import java.util.Map;

public interface OrderDao {
    int findCount(Integer uid);

    List<Order> findByUid(Map<String, Object> map);

    void insert(Order order);

    int findCount1(Integer uid);

    Order findByOid(Integer oid);

    void updateByPrimaryKeySelective(Order currOrder);

    Order findOneByOid(Integer oid);

    int findCountAll();

    List<Order> findOrderPage(Map<String, Object> map);
}
