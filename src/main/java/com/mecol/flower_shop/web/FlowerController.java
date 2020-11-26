package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.service.FlowerService;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/flower")
public class FlowerController {
    @Autowired
    private FlowerService flowerService;


    //进入商品详情页面
    @RequestMapping("/findByPid")
    public String findByPid(int pid,Model model){
        Flower flower=flowerService.findByPid(pid);
        model.addAttribute("flower",flower);
        return "flower";
    }


    //根据一级分类id查找商品 这里一级分类里只有 鲜花商城一个
    @RequestMapping("/findFlowerByCid")
    public String findFlowerByCid(int cid, int page, Model model){
        PageBean<Flower> pageBean=flowerService.findFlowerByCid(cid,page);
        model.addAttribute("pageBean",pageBean);
        model.addAttribute("cid",cid);
        return "flowerList";
    }













}
