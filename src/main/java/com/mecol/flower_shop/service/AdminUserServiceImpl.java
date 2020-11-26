package com.mecol.flower_shop.service;

import com.mecol.flower_shop.dao.AdminUserDao;
import com.mecol.flower_shop.entity.AdminUser;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdminUserServiceImpl implements  AdminUserService{

    @Autowired
    private AdminUserDao adminUserDao;

    @Override
    public AdminUser adminLogin(AdminUser adminUser) {
        return adminUserDao.adminLogin(adminUser) ;
    }

    @Override
    public void add(AdminUser adminUser) {
        adminUserDao.add(adminUser);
    }

    @Override
    public void delete(int uid) {
        adminUserDao.delete(uid);
    }

    @Override
    public AdminUser findByUid(int uid) {
        return adminUserDao.findByUid(uid);
    }

    @Override
    public void edit(AdminUser adminUser) {
        adminUserDao.updateByPrimaryKey(adminUser);
    }

    @Override
    public PageBean<AdminUser> pageAdminUser(int page) {
        PageBean<AdminUser> pagebean = new PageBean<>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int limit = 5;
        pagebean.setLimit(limit);
        //设置总记录数
        int totalCount = 0;
        totalCount = adminUserDao.findCountAll();

        pagebean.setTotalCount(totalCount);
        //设置总页数
        int totalPage = 0;
        if(totalCount % limit ==0){
            totalPage = totalCount / limit;
        }else{
            totalPage = totalCount / limit +1;
        }
        pagebean.setTotalPage(totalPage);
        //设置每页显示的数据集合:
        //从哪个地方开始显示
        int begin = (page-1) * limit;
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("begin",begin);
        map.put("limit",limit);

        List<AdminUser> adminUsers = adminUserDao.findOrderPage(map);
        pagebean.setList(adminUsers);
        return pagebean;
    }
}
