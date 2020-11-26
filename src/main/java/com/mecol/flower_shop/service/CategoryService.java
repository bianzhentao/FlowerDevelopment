package com.mecol.flower_shop.service;

import com.mecol.flower_shop.entity.Category;

import java.util.List;

public interface CategoryService {
    List<Category> findAll();

    List<Category> findAll2();

    void add(Category category);

    void delete(int cid);

    Category findByCid(int cid);

    void edit(Category category);
}
