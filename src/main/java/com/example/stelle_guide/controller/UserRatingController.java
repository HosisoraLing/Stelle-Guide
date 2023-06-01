package com.example.stelle_guide.controller;

import com.example.stelle_guide.pojo.Userrating;
import com.example.stelle_guide.service.UserRatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserRatingController {
    @Autowired(required=false)
    UserRatingService userRatingService;
    @RequestMapping("/addComment")
    public String addComment(Userrating userRating){
        return userRatingService.addComment(userRating);
    }
    @RequestMapping("/showComment")
    public List<Userrating> showComment(Integer gid){
        return userRatingService.showComment(gid);
    }
}
