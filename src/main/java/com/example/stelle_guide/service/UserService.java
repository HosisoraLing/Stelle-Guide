package com.example.stelle_guide.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.stelle_guide.dao.UserDao;
import com.example.stelle_guide.pojo.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

       /* QueryWrapper qw = new QueryWrapper(user);
        User userRs=userDao.selectOne(qw);
        if(userRs.getUsername()!=null){
            return "用户已存在";
        }else{
            int num = userDao.insert(user);
            if(num!=0){
                return "添加成功";
            }else{
                return "添加失败";
            }
        }
*/
        int num = userDao.insert(user);
        if(num!=0){
            return "添加成功";
        }else{
            return "添加失败";
        }

    }
}
