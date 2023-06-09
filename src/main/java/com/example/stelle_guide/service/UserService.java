package com.example.stelle_guide.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.example.stelle_guide.dao.UserDao;
import com.example.stelle_guide.pojo.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Service
public class UserService {
    @Autowired
    UserDao userDao;


    public List<User> selectUser(HttpSession session){

       User userRs = (User) session.getAttribute("user1");
       if(userRs.getPermissionlevel()>=2) {
            return userDao.selectList(null);
       }else {
            return null;
        }

    }


    public String login(User user, HttpSession session) {

            QueryWrapper qw = new QueryWrapper(user);
            User userRs=userDao.selectOne(qw);
            if(userRs!=null){
                session.setAttribute("user1",userRs);
                return "登陆成功";
            }else{
                return "登陆失败";
            }

    }



    public String insert(User user) {
        QueryWrapper qw=new QueryWrapper();
        qw.eq("username",user.getUsername());
        User userRs=userDao.selectOne(qw);
        if(userRs==null) {
            if (user.getAvatar() == "") {
                user.setAvatar("https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp");
            }
            int num = userDao.insert(user);
            if (num != 0) {
                return "添加成功";
            } else {
                return "添加失败";
            }
        }else {
            return "用户名已被占用";
        }
    }

    public User getUserById(Integer uid) {
        QueryWrapper<User> qw = new QueryWrapper();
        qw.eq("uid",uid);
        return userDao.selectById(uid);
    }

    public String updateUser(User user) {
        UpdateWrapper<User> uw=new UpdateWrapper<>();
        uw.eq("uid",user.getUid());
        if(userDao.update(user, uw) >0){
            return "修改成功";
        }else {
            return "修改失败";
        }
    }
}
