package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.Category;
import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.service.CategoryService;
import com.mecol.flower_shop.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("")
public class IndexController {
    @Autowired
    private FlowerService flowerService;
    @Autowired
    private CategoryService categoryService;
    /**
     * 前台主页
     * @param model
     * @param request
     * @param
     * @return
     */
    //当直接输入localhost:8080 的时候进入拦截器 转发到登录界面
    //输入localhost:8080/main的时候进入这里
    @RequestMapping("/main")
    public String index(Model model , HttpServletRequest request){

        //前台查询所有的一级分类,并且关联查询出了页面左侧的二级分类
        List<Category> categoryList=categoryService.findAll();
        request.getSession().setAttribute("cList",categoryList);

        //查询是否是热门商品 1 热门 0 非热门
        List<Flower> hList=flowerService.isHot(1);
        model.addAttribute("hList",hList);
       // System.out.println(hList.get(0).getImage());
        //按时间顺序查询 最新的商品
        List<Flower> nList=flowerService.isNew();
        model.addAttribute("nList",nList);
        return "index"; //返回的是WEB-INF/JSP下的index.jsp
    }
    //打开help页面
    @RequestMapping("/help")
    public String help(){
        return "help";
    }
    @RequestMapping("/Code")
    public String Code(){
        return "Code";
    }
}











