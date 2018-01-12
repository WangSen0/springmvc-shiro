package com.controller;

import com.entity.User;
import com.server.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Role;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * 职责
 *
 * @author wangsen
 * @time 2017/12/31
 */
@Controller
public class Main {
    @Autowired
    UserService userService;
    @RequestMapping(value = "/main",method = {RequestMethod.GET})
    public String main(Model model)throws Exception{
        return "main";
    }
    @RequiresRoles("admin")
    @RequestMapping(value = "/admin",method = {RequestMethod.GET})
    public String admin(Model model)throws Exception{
        return "admin";
    }
    @RequiresRoles("user")
    @RequestMapping(value = "/user",method = {RequestMethod.GET})
    public String user()throws Exception{
        return "user";
    }
}
