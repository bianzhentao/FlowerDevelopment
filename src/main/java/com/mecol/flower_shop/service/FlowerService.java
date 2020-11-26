package com.mecol.flower_shop.service;

import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.entity.echarts;
import com.mecol.flower_shop.util.PageBean;

import java.util.List;

public interface FlowerService {
    

    List<Flower> isNew();

    List<Flower> isHot(int i);

    PageBean<Flower> findFlowerByCid(int cid, int page);

    Flower findByPid(int pid);

    List<echarts> findFlower();

    PageBean<Flower> findAllByPage(int page);

    void edit(Flower flower);

    void delete(int pid);

    void add(Flower flower);
}
