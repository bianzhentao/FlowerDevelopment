package com.mecol.flower_shop.service;

import com.mecol.flower_shop.dao.CategorySecondDao;
import com.mecol.flower_shop.dao.FlowerDao;
import com.mecol.flower_shop.entity.CategorySecond;
import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategorySecondServiceImpl implements  CategorySecondService{

    @Autowired
    private CategorySecondDao categorySecondDao;
    @Autowired
    private FlowerDao flowerDao;


    /**
     * 首页搜索框搜索鲜花
     * @return
     */
    @Override
    public PageBean<Flower> findFlowerByCsName(String csname, int page) {
        if(csname==null){
            csname=""; //设为空那么模糊查询的时候就是查询出所有的
        }
        PageBean<Flower> pagebean = new PageBean<Flower>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int size = 10;
        pagebean.setLimit(size);
        //设置总记录数
        int totalCount = 0;
        totalCount = flowerDao.findCount3(csname);
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
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("begin",begin);
        map.put("size",size);
        map.put("csname",csname);
        List<Flower> list = flowerDao.findAllByCsName(map);
        pagebean.setList(list);
        return pagebean;
    }

    @Override
    public PageBean<CategorySecond> findAllSecond(int page) {
        PageBean<CategorySecond> pagebean = new PageBean<>();
        // 设置当前页数:
        pagebean.setPage(page);
        // 设置每页显示记录数:
        int size = 8;
        pagebean.setLimit(size);
        //设置总记录数
        int totalCount = 0;
        totalCount = categorySecondDao.findCount();
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
        List<CategorySecond> list = categorySecondDao.findAllSecond(begin,size);
        pagebean.setList(list);

        return pagebean;
    }

    @Override
    public List<CategorySecond> findAllSecond() {
        return categorySecondDao.findAll();
    }

    @Override
    public void add(CategorySecond categorySecond) {
        categorySecondDao.insert(categorySecond);
    }

    @Override
    public void delete(int csid) {
        categorySecondDao.deleteByPrimaryKey(csid);
    }

    @Override
    public CategorySecond findByCsid(int csid) {
        return categorySecondDao.selectByPrimaryKey(csid);
    }

    @Override
    public void edit(CategorySecond categorySecond) {
        categorySecondDao.updateByPrimaryKey(categorySecond);
    }
}















