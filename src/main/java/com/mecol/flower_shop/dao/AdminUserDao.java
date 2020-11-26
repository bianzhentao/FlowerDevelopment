package com.mecol.flower_shop.dao;

import com.mecol.flower_shop.entity.AdminUser;

import java.util.List;
import java.util.Map;

public interface AdminUserDao {
    AdminUser adminLogin(AdminUser adminUser);

    void add(AdminUser adminUser);

    void delete(int uid);

    AdminUser findByUid(int uid);

    void updateByPrimaryKey(AdminUser adminUser);

    int findCountAll();

    List<AdminUser> findOrderPage(Map<String, Object> map);
}
