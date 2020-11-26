package com.mecol.flower_shop.web;

import com.mecol.flower_shop.entity.Cart;
import com.mecol.flower_shop.entity.CartItem;
import com.mecol.flower_shop.entity.Flower;
import com.mecol.flower_shop.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;



//一定注意  购物车 是没有保存在数据中的 如果推出再登录的时候 购物车显示为空
//但是订单是保存在数据库中的
@Controller
@RequestMapping("/cartController")
public class CartController {

    @Autowired
    private FlowerService flowerService;

    //将鲜花加入购物车的执行方法
    @RequestMapping("/addCart")
    public String addCart(int count,int pid,HttpServletRequest request){
        //封装一个CartItem对象
        CartItem cartItem=new CartItem();
        //设置数量
        cartItem.setCount(count);
        //根据pid查询鲜花
        Flower flower=flowerService.findByPid(pid);
        //设置商品
        cartItem.setProduct(flower);
        //将购物想添加到购物车中
        //购物车应该存在seesion中
        Cart cart= (Cart) request.getSession().getAttribute("cart");
        if(cart==null){
            cart=new Cart();
            request.getSession().setAttribute("cart",cart);
        }
        cart.addCart(cartItem);
        return "cart";
    }

    // 清空购物车的执行的方法:
    @RequestMapping("/clearCart")
    public String clearCart(HttpServletRequest request){
        // 获得购物车对象.
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            request.getSession().setAttribute("cart", cart);
        }
        // 调用购物车中清空方法.
        cart.clearCart();
        return "cart";
    }

    // 我的购物车:执行的方法
    @RequestMapping("/myCart")
    public String myCart(HttpServletRequest request){

        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            request.getSession()
                    .setAttribute("cart", cart);
        }
        return "cart";
    }

    // 从购物车中移除购物项的方法:
    @RequestMapping("/removeCart")
    public String removeCart(int pid,HttpServletRequest request){
        // 获得购物车对象
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            request.getSession().setAttribute("cart", cart);
        }
        // 调用购物车中移除的方法:
        cart.removeCart(pid);
        // 返回页面:
        return "cart";
    }


}
