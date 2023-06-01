package com.example.stelle_guide.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.stelle_guide.dao.UserRatingDao;
import com.example.stelle_guide.pojo.Userrating;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserRatingService {
    @Autowired
    UserRatingDao userRatingDao;
    public String addComment(Userrating userRating) {
        if(userRatingDao.insert(userRating)!=0){
            return "添加成功";
        }else {
            return "添加失败";
        }
    }

    public List<Userrating> showComment(Integer gid) {
        QueryWrapper qw=new QueryWrapper();
        qw.eq("gid",gid);
        return userRatingDao.selectList(qw);
    }
}
