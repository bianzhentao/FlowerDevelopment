package com.mecol.flower_shop.dao;

import com.mecol.flower_shop.entity.User;

import java.util.List;
import java.util.Map;

public interface UserDao {
    User login(User user);

    User findByUserName(String username);

    void insert(User user);

    User findByUid(int uid);

    void updateUser(User user);

    void delete(int uid);

    int findCount();

    List<User> findUserPage(Map<String, Object> map);
}
