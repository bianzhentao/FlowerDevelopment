package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.service.CategorySecondService;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.awt.ModalExclude;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CategorySecondController {

    @Autowired
    private CategorySecondService categorySecondService;

    //首页搜索框搜索鲜花
    //注意前端 提示的是 搜索你想要的鲜花 所以输入的是鲜花名称 csname是花名
    @RequestMapping("/findFlowerByCsName")
    public String findFlowerByCsName(Model model, int page, HttpServletRequest request){
        String csname=request.getParameter("csname");
        PageBean<Flower> pageBean=categorySecondService.findFlowerByCsName(csname,page);
        model.addAttribute("pageBean",pageBean);
        model.addAttribute("csname",csname);
        return "flowerList";
    }
}













