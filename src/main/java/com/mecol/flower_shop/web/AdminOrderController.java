package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.Order;
import com.mecol.flower_shop.entity.OrderItem;
import com.mecol.flower_shop.service.OrderItemService;
import com.mecol.flower_shop.service.OrderService;
import com.mecol.flower_shop.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin/adminOrderController")
public class AdminOrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderItemService orderItemService;

    /**
     * 查询订单列表
     * @param request
     * @return
     */
    @RequestMapping("/list")
    public String list(HttpServletRequest request, int page){

        PageBean<Order> pageBean = orderService.findAllSecond(page);
        request.getSession().setAttribute("pageBean", pageBean);
        return "/admin/order/list";
    }


    /** 根据订单的id查询订单项:
     *
     * @return
     */@RequestMapping("/findOrderItem")
    public String findOrderItem(HttpServletRequest request,Order order){
        // 根据订单id查询订单项:
        List<OrderItem> list = orderItemService.findOrderItem(order.getOid());
        // 显示到页面:

        request.setAttribute("list", list);
        // 页面跳转
        return "/admin/order/orderItem";
    }


    /**
     *  修改订单状态
     * @return
     */
    @RequestMapping("/updateState")
    public String updateState(Order order){
        // 根据id查询订单
        Order currOrder = orderService.findByOid(order.getOid());
        currOrder.setState(3);
        orderService.update(currOrder);
        // 页面跳转
        return "redirect:list?page=1";
    }
}
