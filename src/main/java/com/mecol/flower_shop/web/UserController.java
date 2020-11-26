package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.User;
import com.mecol.flower_shop.service.UserService;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;


    //打开注册界面
    @RequestMapping("/toRegist")
    public String toRegist(){
        return "regist";
    }
    //前端点击注册
    @RequestMapping("/regist")
    public String regist(User user,Model model,String checkcode,HttpServletRequest request){
       String SessionCode= (String) request.getSession().getAttribute("code"); //在code.jsp中将生成的验证码放进code中了
        if(!checkcode.equalsIgnoreCase(SessionCode)){
            model.addAttribute("msg","验证码不正确");
            return "regist";
        }
        //后台判断用户名是否已经存在
        User user1=userService.findByUserName(user.getUsername());
        if(user1!=null){
            request.setAttribute("msg","<font color='red'>用户名已经存在！</font>");
            return "regist";
        }
        userService.regist(user);
        request.setAttribute("msg","注册成功，请登录");
        return "login";
    }








    //前台登录输入：http://localhost:8080/main 不要输入 http://localhost:8080
    //打开登录界面
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }
    //处理前端登录请求
    @RequestMapping("/login")
    public String login(User user, Model model, HttpServletRequest request){
        User existUser=userService.login(user);
        if(existUser!=null){
            request.getSession().setAttribute("existUser",existUser);
            return "redirect:/main"; //重新回到首页 这里一定要写 /main
            // 如果直接写 main 发送的请求是/user/main
            //而我们期望的是localhost:8080/main
        }
        else {
            if(user.getUsername()==null||"".equals(user.getUsername().trim())){
                request.setAttribute("msg","用户名不能为空");
            }
            else if(user.getPassword()==null||"".equals(user.getPassword().trim())){
                request.setAttribute("msg","密码不能为空！");
            } else {
                request.setAttribute("msg","用户名密码不正确");
            }
            return "login";
        }
    }
    //前台会员修改密码 打开修改密码页面
    @RequestMapping("/ToEditPassword")
    public String ToEditPassword(){
        return "editPassword";
    }
    //前端修改密码
    @RequestMapping("/editPassword")
    public String editPassword(HttpServletRequest request,int uid){
        String password=request.getParameter("password");
        String password2=request.getParameter("password2");
        if(!password.equals(password2)){
            request.setAttribute("msg","两次密码输入不一致");
            return "editPassword";
        }
        User user=userService.findByUid(uid);
        user.setPassword(password);
        userService.updateUser(user);
        return "redirect:/user/toLogin";
    }


    //退出
    @RequestMapping("/quit")
    public String quit(HttpServletRequest request){
        request.getSession().invalidate();
        return "login";
    }



    /**
     * 后台用户添加
     * @return
     */
    @RequestMapping("/add")
    public String add(User user){
        userService.add(user);
        return "redirect:findAll?page=1";
    }
    /**
     * 后台用户删除
     * @return
     */

    @RequestMapping("/delete")
    public String delete(int uid){
        userService.delete(uid);
        return "redirect:findAll?page=1";
    }


    /**
     * 进入后台用户编辑界面
     * @return
     */
    @RequestMapping("/toEdit")
    public String toEdit(int uid,HttpServletRequest request){
        User user = userService.findByUid(uid);
        request.setAttribute("user", user);
        return "/admin/user/edit";
    }

    /**
     * 后台用户编辑
     * @return
     */
    @RequestMapping("/edit")
    public String edit(User user){
        userService.edit(user);
        return "redirect:findAll?page=1";
    }


    /**
     * 后台用户查询
     * @return
     */
    @RequestMapping("/findAll")
    public String findAll(HttpServletRequest request,int page){
        //List<User> list = userService.findAll();
        //request.setAttribute("list", list);
        PageBean<User> pageBean = userService.pageUser(page);
        request.getSession().setAttribute("pageBean", pageBean);
        return "/admin/user/list";
    }


}
