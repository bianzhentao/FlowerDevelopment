package com.mecol.flower_shop.dao;

import com.mecol.flower_shop.entity.Category;

import java.util.List;

public interface CategoryDao {

    List<Category> findAll();

    List<Category> findAll2();

    void insert(Category category);

    void deleteByPrimaryKey(int cid);

    Category selectByPrimaryKey(int cid);

    void updateByPrimaryKey(Category category);

}
