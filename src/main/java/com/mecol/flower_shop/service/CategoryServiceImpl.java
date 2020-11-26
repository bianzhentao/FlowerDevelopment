package com.mecol.flower_shop.service;

import com.mecol.flower_shop.dao.CategoryDao;
import com.mecol.flower_shop.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryDao categoryDao;

    @Override
    public List<Category> findAll() {
        return categoryDao.findAll();
    }

    @Override
    public List<Category> findAll2() {
        return categoryDao.findAll2();
    }

    @Override
    public void add(Category category) {
        categoryDao.insert(category);
    }

    @Override
    public void delete(int cid) {
        categoryDao.deleteByPrimaryKey(cid);
    }

    @Override
    public Category findByCid(int cid) {
        return categoryDao.selectByPrimaryKey(cid);
    }

    @Override
    public void edit(Category category) {
        categoryDao.updateByPrimaryKey(category);
    }
}
