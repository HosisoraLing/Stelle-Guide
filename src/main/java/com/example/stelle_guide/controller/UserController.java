package com.example.stelle_guide.controller;

import com.example.stelle_guide.pojo.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.stelle_guide.service.UserService;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@RestController
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/selectUser")
    public List<User> selectUser(HttpSession session){

        return userService.selectUser(session);

    }

    @RequestMapping("/login")
    public String login(User user,HttpSession session){

        return userService.login(user,session);

    }

    @RequestMapping("/register")
    public String insert(User user){

        return userService.insert(user);
    }

    @RequestMapping("/getUid")
    public Integer getUid(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user.getUid();
    }

    @RequestMapping("/getUser")
    public User getUser(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user;
    }

    @RequestMapping("/getUserById")
    public User getUserById(Integer uid){
        return userService.getUserById(uid);
    }
    @RequestMapping("/getUserName")
    public String getUserName(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user.getUsername();
    }

    @RequestMapping("/getNickName")
    public String getNickName(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user.getNickname();
    }

    @RequestMapping("/getPermissionLevel")
    public Integer getPermissionLevel(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user.getPermissionlevel();
    }

    @RequestMapping("/getEmail")
    public String getEmail(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user.getEmail();
    }

    @RequestMapping("/getSteamID")
    public String getSteamID(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user.getSteamid();
    }

    @RequestMapping("/logOut")
    public RedirectView logOut(HttpSession session){
        session.invalidate();
        return new RedirectView("/index.html");
    }

    @RequestMapping("/isLoggedIn")
    public String isLoggedIn(HttpSession session){
        User user=(User) session.getAttribute("user1");
        if(user!=null){
            return "用户已登录";
        }else {
            return "尚未登录";
        }
    }
}
