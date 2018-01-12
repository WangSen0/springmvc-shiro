package com.controller;

import com.entity.User;
import com.server.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * 职责
 *
 * @author wangsen
 * @time 2017/12/30
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping(value = "/login",method = {RequestMethod.GET})
    public String userLogin(){
        return "login";
    }
    @RequestMapping(value = "/login",method = {RequestMethod.POST})
    public String userLogin(User user,String username, RedirectAttributes redirectAttributes){
        String error=null;
        UsernamePasswordToken token=new UsernamePasswordToken(user.getUsername(),user.getPassword());
        Subject subject=SecurityUtils.getSubject();
        try{
            subject.login(token);
        }catch (Exception e){
            error="wrong";
        }
        if(error==null){
            return "redirect:/main";
        }else {
            redirectAttributes.addFlashAttribute("message","错误");
            //redirectAttributes.addAttribute("message","错误");
            return "redirect:/login";
        }
    }
    @RequestMapping(value = "/logout")
    public String logout(){
        SecurityUtils.getSubject().logout();
        return "redirect:/login";
    }
}
