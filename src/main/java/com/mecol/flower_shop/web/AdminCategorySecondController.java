package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.Category;
import com.mecol.flower_shop.entity.CategorySecond;
import com.mecol.flower_shop.service.CategorySecondService;
import com.mecol.flower_shop.service.CategoryService;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin/adminCategorySecondController")
public class AdminCategorySecondController {

    @Autowired
    private CategorySecondService categorySecondService;

    @Autowired
    private CategoryService categoryService;


    /**
     * 添加二级分类
     * @return
     */
    @RequestMapping("/toAdd")
    public String toAdd(HttpServletRequest request){
        List<Category> list = categoryService.findAll2();
        request.getSession().setAttribute("list", list);
        return "/admin/categorysecond/add";
    }


    @RequestMapping("/add")
    public String add(CategorySecond categorySecond){
        categorySecondService.add(categorySecond);
        return "redirect:list?page=1";
    }

    /**
     * 删除二级分类
     * @return
     */
    @RequestMapping("/delete")
    public String delete(int csid){
        categorySecondService.delete(csid);
        return "redirect:list?page=1";
    }


    /**
     * 编辑二级分类
     * @return
     */
    @RequestMapping("/toEdit")
    public String toEdit(int csid,HttpServletRequest request){
        CategorySecond categorySecond =	categorySecondService.findByCsid(csid);
        request.getSession().setAttribute("categorySecond", categorySecond);


        List<Category> list = categoryService.findAll2();
        request.getSession().setAttribute("list", list);

        return "/admin/categorysecond/edit";
    }


    @RequestMapping("/edit")
    public String edit(CategorySecond categorySecond){
        categorySecondService.edit(categorySecond);

        return "redirect:list?page=1";
    }







    /**
     * 分页查询二级分列表
     * @return
     */
    @RequestMapping("/list")
    public String list(HttpServletRequest request, int page){

        //分页查询数据
        PageBean<CategorySecond> pageBean = categorySecondService.findAllSecond(page);
        request.getSession().setAttribute("pageBean", pageBean);

        //添加或者修改商品时遍历所有的二级分类而不是遍历分页的数据
        List<CategorySecond> list = categorySecondService.findAllSecond();
        request.getSession().setAttribute("list", list);

        return "/admin/categorysecond/list";
    }

}
