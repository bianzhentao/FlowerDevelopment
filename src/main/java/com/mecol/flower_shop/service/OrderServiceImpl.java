package com.mecol.flower_shop.service;

import com.mecol.flower_shop.dao.OrderDao;
import com.mecol.flower_shop.entity.Order;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    private OrderDao orderDao;

    @Override
    public PageBean<Order> findByUid(Integer uid, int page) {
        PageBean<Order> pagebean = new PageBean<>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int limit = 4;
        pagebean.setLimit(limit);
        //设置总记录数
        int totalCount = 0;
       // totalCount = orderDao.findCount(uid);
        //这里 注意根据用户查询订单 一个订单里可能好几种花 这里一页显示4个 是显示花种的数量
        //不是每页显示4个订单 所以这里查询总数的时候 要查询 所有订单中花的种类数量
        // 不是订单的数量
        totalCount = orderDao.findCount1(uid);
        pagebean.setTotalCount(totalCount);
        //设置总页数
        int totalPage = 0;
        if(totalCount % limit ==0){
            totalPage = totalCount / limit;
        }else{
            totalPage = totalCount / limit +1;
        }
        pagebean.setTotalPage(totalPage);
        //设置每页显示的数据集合:
        //从哪个地方开始显示
        int begin = (page-1) * limit;
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("begin",begin);
        map.put("limit",limit);
        map.put("uid",uid);
        List<Order> orders = orderDao.findByUid(map);
        pagebean.setList(orders);
        return pagebean;
    }

    @Override
    public void save(Order order) {
        orderDao.insert(order);
    }

    @Override
    public Order findByOid(Integer oid) {
        return orderDao.findByOid(oid);
    }

    @Override
    public void update(Order currOrder) {
        orderDao.updateByPrimaryKeySelective(currOrder);
    }

    @Override
    public Order findOneByOid(Integer oid) {
        return orderDao.findOneByOid(oid);
    }

    @Override
    public PageBean<Order> findAllSecond(int page) {
        PageBean<Order> pagebean = new PageBean<>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int limit = 5;
        pagebean.setLimit(limit);
        //设置总记录数
        int totalCount = 0;
         totalCount = orderDao.findCountAll();

        pagebean.setTotalCount(totalCount);
        //设置总页数
        int totalPage = 0;
        if(totalCount % limit ==0){
            totalPage = totalCount / limit;
        }else{
            totalPage = totalCount / limit +1;
        }
        pagebean.setTotalPage(totalPage);
        //设置每页显示的数据集合:
        //从哪个地方开始显示
        int begin = (page-1) * limit;
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("begin",begin);
        map.put("limit",limit);

        List<Order> orders = orderDao.findOrderPage(map);
        pagebean.setList(orders);
        return pagebean;
    }
}
