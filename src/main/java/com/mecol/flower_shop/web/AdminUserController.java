package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.AdminUser;
import com.mecol.flower_shop.service.AdminUserService;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminUserController {

    @Autowired
    private AdminUserService adminUserService;


    //输入localhost:8080/admin/main 进入后台登录
    @RequestMapping("/main")
    public String adminIndex(){
        return "admin/index";
    }

    /**
     * 登录后 点击首页
     * @return
     */
    @RequestMapping("/home")
    public String home(){
        return "admin/home";
    }

    /**
     * 用户退出
     * @param request
     * @return
     */
    @RequestMapping("/quit")
    private String quit(HttpServletRequest request){
        request.getSession().invalidate();
        return "admin/index";
    }
    /**
     * 后台登录
     * @param request
     * @param adminUser
     * @return
     */
    @RequestMapping("/adminLogin")
    public String adminLogin(HttpServletRequest request, AdminUser adminUser){
        if(adminUser.getUsername()==null || adminUser.getUsername()=="" ||adminUser.getPassword()==null||adminUser.getPassword()==""){
            request.setAttribute("msg","用户名密码不能为空");
            return "admin/index";
        }
        AdminUser existAdminUser = adminUserService.adminLogin(adminUser);
        if(existAdminUser!=null){
            //保存用户到session中
            request.getSession().setAttribute("existAdminUser", existAdminUser);
            return "admin/home";
        }else{
            request.setAttribute("msg","用户名密码不正确");
            return "admin/index";
        }
    }



    /**
     * 进入后台用户添加页面
     * @return
     */
    @RequestMapping("/adminUserController/toAdd")
    public String toAdd(AdminUser adminUser){
        return "/admin/adminuser/add";
    }
    /**
     * 后台用户添加
     * @return
     */
    @RequestMapping("/adminUserController/add")
    public String add(AdminUser adminUser){
        adminUserService.add(adminUser);
        return "redirect:findAllByPage?page=1";
    }
    /**
     * 后台用户删除
     * @return
     */

    @RequestMapping("/adminUserController/delete")
    public String delete(int uid){
        adminUserService.delete(uid);
        return "redirect:findAllByPage?page=1";
    }

    /**
     * 进入后台用户编辑界面
     * @return
     */
    @RequestMapping("/adminUserController/toEdit")
    public String toEdit(int uid,HttpServletRequest request){
        AdminUser adminUser = 	adminUserService.findByUid(uid);
        request.setAttribute("adminUser", adminUser);
        return "/admin/adminuser/edit";
    }

    /**
     * 后台用户编辑
     * @return
     */
    @RequestMapping("/adminUserController/edit")
    public String edit(AdminUser adminUser){
        adminUserService.edit(adminUser);
        return "redirect:findAllByPage?page=1";
    }


    /**
     * 后台用户查询
     * @return
     */
    @RequestMapping("/adminUserController/findAllByPage")
    public String findAllByPage(HttpServletRequest request,int page){
        //List<AdminUser> list = adminUserService.findAll();
        //request.setAttribute("list", list);
        PageBean<AdminUser> pageBean = adminUserService.pageAdminUser(page);
        request.getSession().setAttribute("pageBean", pageBean);

        return "/admin/adminuser/list";
    }



}













