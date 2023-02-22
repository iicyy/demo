package com.zero.controller;

import com.zero.pojo.User;
import com.zero.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    //登录
    @RequestMapping("/login")
    public String Login(HttpSession httpSession,User user){
        System.out.println("登录");
        String userName=user.getUserName();
        String password=user.getPassword();
        Map m=new HashMap();
        m.put("userName",userName);
        List<User> users=userService.Login(m);
        if(users.size()!=0&&users.get(0).getPassword().equals(password)){
            System.out.println("登录成功!");
            httpSession.setAttribute("Login",userName);
            return "redirect:/book/AllBook";
        }

        return "redirect:/loginUI";    //转到主页
    }
    //注销
    @RequestMapping("/logout")
    public String Logout(HttpSession httpSession){
        httpSession.removeAttribute("Login");
        return "redirect:/loginUI";
    }
    //登录界面
    @RequestMapping("/loginUI")
    public String LoginUI(){
//        return "login";
        return "redirect:/";
    }

    //修改密码
    @RequestMapping("/toUpdataPassword")
    public String toUpdataPassword(){
        return "toUpdataPassword";
    }
    @RequestMapping("/UpdataPassword")
    public String UpdataPassword(HttpSession httpSession,String password){
        String userName= (String) httpSession.getAttribute("Login");
        Map m=new HashMap();
        m.put("userName",userName);
        m.put("password",password);
        userService.UpdataPassword(m);
        return "redirect:/loginUI";
    }
}
