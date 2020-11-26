package com.mecol.flower_shop.service;

import com.github.pagehelper.PageHelper;
import com.mecol.flower_shop.dao.FlowerDao;
import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.entity.echarts;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FlowerServiceImpl implements  FlowerService {

    @Autowired
    private FlowerDao flowerDao;
    @Override
    public List<Flower> isHot(int isHot) {

        return flowerDao.isHot(isHot) ;
    }

    //前台根据一级分类的id分页显示商品列表
    @Override
    public PageBean<Flower> findFlowerByCid(int cid, int page) {
        PageBean<Flower> pagebean = new PageBean<>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int limit = 9;
        pagebean.setLimit(limit);
        //设置总记录数
        int totalCount = 0;
        totalCount = flowerDao.findCount1(cid);
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
        map.put("cid",cid);
        //List<Product> list = productMapper.findProductByCid(cid);
        List<Flower> list = flowerDao.findByPageCid(map);
        pagebean.setList(list);
        return pagebean;
    }

    @Override
    public Flower findByPid(int pid) {
        return flowerDao.findById(pid);
    }

    @Override
    public List<echarts> findFlower() {
        return flowerDao.findFlower();
    }

    @Override
    public PageBean<Flower> findAllByPage(int page) {
        PageBean<Flower> pagebean = new PageBean<Flower>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int size = 8;
        pagebean.setLimit(size);
        //设置总记录数
        int totalCount = 0;
        totalCount = flowerDao.adminCount();
        pagebean.setTotalCount(totalCount);
        //设置总页数
        int totalPage = 0;
        if(totalCount % size ==0){
            totalPage = totalCount / size;
        }else{
            totalPage = totalCount / size +1;
        }
        pagebean.setTotalPage(totalPage);
        //设置每页显示的数据集合:
        //从哪个地方开始显示
        int begin = (page-1) * size;
        //pagebean.setBegin(begin);
        //List<Product> list = productMapper.findByPage()
        List<Flower> list = flowerDao.findAll(begin,size);
        pagebean.setList(list);

        return pagebean;
    }

    @Override
    public void edit(Flower flower) {
        flowerDao.updateByPrimaryKeySelective(flower);
    }

    @Override
    public void delete(int pid) {
        flowerDao.deleteByPrimaryKey(pid);
    }

    @Override
    public void add(Flower flower) {
        flowerDao.insert(flower);
    }

    @Override
    public List<Flower> isNew() {

        return flowerDao.isNew();
    }


}
