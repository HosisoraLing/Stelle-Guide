package com.example.stelle_guide.controller;

import com.example.stelle_guide.pojo.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.stelle_guide.service.UserService;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import java.io.File;
import java.io.IOException;
import java.util.List;

@RestController
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/selectUser")
    public List<User> selectUser(HttpSession session){

        return userService.selectUser(session);

    }
    @RequestMapping("/updateAvatar")
    public String updateAvatar(HttpSession session, MultipartFile file){
        User user = (User) session.getAttribute("user1");
        if (user!=null) {
            if (file.isEmpty()) {
                return "文件不存在";
            }
            String originalFilename = file.getOriginalFilename();
            System.out.println("文件名：" + originalFilename);
            String extensionName = "." + originalFilename.split("\\.")[1];
            String localPath = "E:\\Stelle Guide\\avatar";
            String newFilename=user.getUsername()+extensionName;
            String Path = localPath+"\\"+newFilename;
            System.out.println(Path);
            try {
                file.transferTo(new File(Path));
                System.out.println("图片保存成功—"+Path);
                return "http://localhost:8192/updateAvatar/"+newFilename;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        }else {
            return "用户信息获取错误，可能没有登录";
        }
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
    @RequestMapping("/getAvatar")
    public String getAvatar(HttpSession session){
        User user = (User) session.getAttribute("user1");
        return user.getAvatar();
    }

    @RequestMapping("/getUser")
    public User getUser(HttpSession session){
        System.out.println("getUser");
        User user = (User) session.getAttribute("user1");
        System.out.println(user);
        if(user!=null) {
            return user;
        }else {
            return null;
        }
    }

    @RequestMapping("/getUserById")
    public User getUserById(Integer uid){
        System.out.println(uid);
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
        if(user!=null) {
            return user.getNickname();
        }else {
            return "尚未登录";
        }
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
    @RequestMapping("/updateUser")
    public String updateUser(User user,HttpSession session){
        User userRs=(User) session.getAttribute("user1");
        if(userRs.getUid()==user.getUid()){
            return userService.updateUser(user);
        }else {
            return "发生未知错误";
        }
    }
}
