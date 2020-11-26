package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.Category;
import com.mecol.flower_shop.entity.CategorySecond;
import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.entity.echarts;
import com.mecol.flower_shop.service.CategorySecondService;
import com.mecol.flower_shop.service.CategoryService;
import com.mecol.flower_shop.service.FlowerService;
import com.mecol.flower_shop.util.PageBean;
import com.mecol.flower_shop.util.WebUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/admin/adminFlowerController")
public class AdminFlowerController {

    @Autowired
    private FlowerService flowerService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private CategorySecondService categorySecondService;



    /**
     * 后台商品的添加
     * @return
     */
    @RequestMapping("/toAdd")
    public String toAdd(HttpServletRequest request){

        List<CategorySecond> list = categorySecondService.findAllSecond();
        request.setAttribute("list", list);
        return "/admin/flower/add";
    }



    @RequestMapping("/add")
    public String add(Flower flower, HttpServletRequest request,HttpSession session,
                      @RequestParam(value = "upload", required = false) MultipartFile file){
//        String imageAddr = WebUtils.saveFile(request, file);
//        flower.setImage(imageAddr);
        //获取上传路径
        String realPath = session.getServletContext().getRealPath("images/uploadfiles/");
        //获取原文件名
        String oldName = file.getOriginalFilename();
        //获取扩展名
        String extension = FilenameUtils.getExtension(oldName);//原文件后缀
        //生成新文件名
        String newName = System.currentTimeMillis() + new Random().nextInt(1000) + "_upload." + extension;
        //封装文件对象
        System.out.println(newName);
        File files = new File(realPath, newName);
        try {
            file.transferTo(files);
        } catch (IOException e) {
            e.printStackTrace();
        }
        flower.setImage(newName);
        flower.setPdate(new Date());
        flowerService.add(flower);
        return "redirect:list?page=1";
    }



    /**
     * 后台商品的删除
     * @return
     */
    @RequestMapping("/delete")
    public String delete(int pid){
        //1.删除磁盘上的图片
        Flower flower = flowerService.findByPid(pid);
        String delPath = "${ pageContext.request.contextPath }\\xianhua\\"
                + flower.getImage();
        System.out.println(delPath);
        File file = new File(delPath);
        file.delete();

        //2.再删除数据库记录
        flowerService.delete(pid);
        return "redirect:list.action?page=1";
    }

    /**
     * 后台商品的编辑
     * @return
     */
    @RequestMapping("/toEdit")
    public String toEdit(int pid, HttpServletRequest request){
        Flower flower = flowerService.findByPid(pid);
        request.setAttribute("flower", flower);

        //所属一级分类
        List<Category> clist =categoryService.findAll2();
        request.setAttribute("clist", clist);
        //所属二级分类
        List<CategorySecond> list = categorySecondService.findAllSecond();
        request.setAttribute("list", list);
        return "/admin/flower/edit";

    }


    @RequestMapping("/edit")
    public String edit(Flower flower,HttpServletRequest request,
                       @RequestParam(value = "upload", required = false) MultipartFile file){


        if(file.getSize()!=0){

            //1.先删除原来的图片
            String delPath = "F:\\idea pro\\\\ssm_mysql_flower_shop\\src\\main\\webapp\\"
                    + flower.getImage();

            System.out.println(delPath);
            File file1 = new File(delPath);
            file1.delete();


            //2.上传新的图片
            String imageAddr = WebUtils.saveFile(request, file);
            flower.setImage(imageAddr);
        }




        flower.setPdate(new Date());
        flowerService.edit(flower);
        return "redirect:list?page=1";
    }

    /**
     * 后台商品列表分页查看
     * @return
     */
    @RequestMapping("/list")
    public String list(HttpServletRequest request, int page){
        PageBean<Flower> pList = flowerService.findAllByPage(page);
        request.setAttribute("pList", pList);
        return "/admin/flower/list";
    }




    @ResponseBody
    @RequestMapping(method= RequestMethod.GET,value = "/echarts")
    public List echarts(){
      //  System.out.println("*****");
        List<echarts> flower = flowerService.findFlower();

       // System.out.println(flower);
        return flower;
    }
}
