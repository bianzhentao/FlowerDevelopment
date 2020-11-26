package com.mecol.flower_shop.dao;

import com.mecol.flower_shop.entity.CategorySecond;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategorySecondDao {
    int findCount();

    List<CategorySecond> findAllSecond(@Param("begin") int begin, @Param("size") int size);

    List<CategorySecond> findAll();

    void insert(CategorySecond categorySecond);

    void deleteByPrimaryKey(int csid);

    CategorySecond selectByPrimaryKey(int csid);

    void updateByPrimaryKey(CategorySecond categorySecond);
}
