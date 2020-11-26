package com.mecol.flower_shop.dao;

import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.entity.echarts;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface FlowerDao {


    List<Flower> isHot(int isHot);

    List<Flower> isNew();

    int findCount3(String csname);

    List<Flower> findAllByCsName(Map<String, Object> map);

    int findCount1(int cid);

    List<Flower> findByPageCid(Map<String, Object> map);

    Flower findById(int pid);

    List<echarts> findFlower();

    int adminCount();

    List<Flower> findAll(@Param("begin") int begin, @Param("size") int size);

    void updateByPrimaryKeySelective(Flower flower);

    void deleteByPrimaryKey(int pid);

    void insert(Flower flower);
}
