package com.mecol.flower_shop.service;

import com.mecol.flower_shop.entity.AdminUser;
import com.mecol.flower_shop.util.PageBean;

public interface AdminUserService {
    AdminUser adminLogin(AdminUser adminUser);

    void add(AdminUser adminUser);

    void delete(int uid);

    AdminUser findByUid(int uid);

    void edit(AdminUser adminUser);

    PageBean<AdminUser> pageAdminUser(int page);
}
