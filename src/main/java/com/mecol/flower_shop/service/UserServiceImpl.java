package com.mecol.flower_shop.service;

import com.mecol.flower_shop.dao.UserDao;
import com.mecol.flower_shop.entity.User;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    @Override
    public User login(User user) {
        return userDao.login(user);
    }

    @Override
    public User findByUserName(String username) {
        return userDao.findByUserName(username);
    }

    @Override
    public void regist(User user) {
        userDao.insert(user);
    }

    @Override
    public User findByUid(int uid) {
        return userDao.findByUid(uid);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void add(User user) {
        userDao.insert(user);
    }

    @Override
    public void delete(int uid) {
        userDao.delete(uid);
    }

    @Override
    public void edit(User user) {
        userDao.updateUser(user);
    }

    @Override
    public PageBean<User> pageUser(int page) {
        PageBean<User> pagebean = new PageBean<>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int limit = 5;
        pagebean.setLimit(limit);
        //设置总记录数
        int totalCount = 0;
        totalCount = userDao.findCount();

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

        List<User> userList = userDao.findUserPage(map);
        pagebean.setList(userList);
        return pagebean;
    }
}
