package com.mecol.flower_shop.interceptor;

import com.mecol.flower_shop.entity.AdminUser;
import com.mecol.flower_shop.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AuthorizedInterceptor implements HandlerInterceptor
{
    //定义不拦截的请求  "/"  是 输入 http://localhost:8080 的时候获得的servletPath是  "/" 这里去掉了
    //注意这个数组在下面处理的时候 是 包含关系 不是等于
    private static final String[] IGNORE_URI= {"adminLogin",".bmp","quit","/main",".htm","regist","toRegist",".ico",".woff",".ttg",".jpg",".css",".js",".png","/toLogin","/login"};
    /**
     * 该方法需要preHandle方法的返回值为true时才会执行。
     * 该方法将在整个请求完成之后执行，主要作用是用于清理资源。
     */
    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception exception)
            throws Exception {

    }

    /**
     * 这个方法在preHandle方法返回值为true的时候才会执行。
     * 执行时间是在处理器进行处理之 后，也就是在Controller的方法调用之后执行。
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response,
                           Object handler, ModelAndView mv) throws Exception {

    }
    /**
     * preHandle方法是进行处理器拦截用的，该方法将在Controller处理之前进行调用，
     * 当preHandle的返回值为false的时候整个请求就结束了。
     * 如果preHandle的返回值为true，则会继续执行postHandle和afterCompletion。
     *
     */
    @Override
    public boolean preHandle(HttpServletRequest request,HttpServletResponse response,
                             Object handler) throws Exception
    {

        System.out.println("进入拦截器");
        //默认用户没有登录
        boolean flag=false;
        //获得请求的ServletPath
        String servletPath=request.getServletPath();
        for(String s:IGNORE_URI)
        {
            if(servletPath.contains(s))
            {
                flag=true;
                break;
            }
        }
        //拦截请求
        if(!flag)
        {

            System.out.println("拦截器开始判断是否已经登陆 :"+servletPath);
            AdminUser existAdminUser= (AdminUser) request.getSession().getAttribute("existAdminUser");
            User existUser=(User) request.getSession().getAttribute("existUser");

            if(existUser!=null&&existAdminUser!=null){ //前台后台均登陆
                flag=true;
                return flag;
            }

            if(existAdminUser==null&&existUser!=null){//前端登录
                flag=true;
                return flag;
            }
            if(existAdminUser!=null&&existUser==null){ //后台登录
                flag=true;
                return flag;
            }
            if(existAdminUser==null||existUser==null) {

                if(servletPath.contains("admin")){ //说明是后端操作
                    request.getRequestDispatcher("/admin/main").forward(request, response);
                    System.out.println("后台未登录，拦截成功，转发到登录页面");
                    return flag;
                }
                else {
                    request.getRequestDispatcher("/user/toLogin").forward(request, response);
                    System.out.println("前端未登录，拦截成功，转发到登录页面");
                    return flag;
                }
            }

                /*
                if (existUser == null) {
                    //地址转发
                    request.getRequestDispatcher("/user/toLogin").forward(request, response);
                    System.out.println("未登录，拦截成功，转发到登录页面");
                    return flag;
                } else {
                    flag = true;
                }
                if (existAdminUser == null) {
                    //地址转发
                    request.getRequestDispatcher("/admin/main").forward(request, response);
                    System.out.println("未登录，拦截成功，转发到登录页面");
                    return flag;
                } else {
                    flag = true;
                }
            }
            */


        }

        return flag;
    }

}

