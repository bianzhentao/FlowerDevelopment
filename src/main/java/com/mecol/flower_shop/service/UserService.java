package com.mecol.flower_shop.service;

import com.mecol.flower_shop.entity.User;
import com.mecol.flower_shop.util.PageBean;

public interface UserService {
    User login(User user);

    User findByUserName(String username);

    void regist(User user);

    User findByUid(int uid);

    void updateUser(User user);

    void add(User user);

    void delete(int uid);

    void edit(User user);

    PageBean<User> pageUser(int page);
}
