package com.mecol.flower_shop.service;

import com.mecol.flower_shop.entity.CategorySecond;
import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.util.PageBean;

import java.util.List;

public interface CategorySecondService {
    PageBean<Flower> findFlowerByCsName(String csname, int page);

    PageBean<CategorySecond> findAllSecond(int page);

    List<CategorySecond> findAllSecond();
    void add(CategorySecond categorySecond);
    void delete(int csid);
    CategorySecond findByCsid(int csid);
    void edit(CategorySecond categorySecond);
}
