package com.mecol.flower_shop.util;


import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

public class WebUtils {
    /**
     * 保存文件
     */
    public static String saveFile(HttpServletRequest request, MultipartFile file) {
        String URI = "";
        String savaDBPath = "";
        if (!file.isEmpty()) {
            try {
                // 保存的文件路径(如果用的是Tomcat服务器
                // 文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中
                String filename = UUID.randomUUID().toString().replaceAll("-", "") + "_" + file.getOriginalFilename();
		//下面的配置 单步调试回发现是放在了target里面的 所以 项目运行的时候 可以上传成功 关闭后 再运行就没有了 xianhua里面也没有图片
		//所以要改成固定的目录 上传后再刷新项目
               // String filePath = request.getSession().getServletContext().getRealPath("/") + "/xianhua/" + filename;
		//String filePath = "F:\\idea pro\\花店 假支付\\ssm_mysql_flower_shop\\src\\main\\webapp\\xianhua\\" + filename;

                //这里我们改成虚拟路径
                //idea中配置的时候 因为前段显示的图片是
                // http://localhost:8080/xianhua/b1ef4e4acf034db99d86de2c0fe02dbe_timg%20(5).jpg
                //所以我们配置 虚拟路径的时候 选择D盘的文件夹 xianhua 然后 其对应的application context 写/xianhua
                String filePath = "D:\\xianhua\\" + filename;

                savaDBPath = "xianhua/"+ filename;
                File saveDir = new File(filePath);
                if (!saveDir.getParentFile().exists())
                    saveDir.getParentFile().mkdirs(); // 注意这里一定是mkdirs
                // 转存文件
                file.transferTo(saveDir);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return savaDBPath;
    }

}

