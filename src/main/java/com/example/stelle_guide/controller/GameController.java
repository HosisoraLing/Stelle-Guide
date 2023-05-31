package com.example.stelle_guide.controller;

import com.example.stelle_guide.pojo.Game;
import com.example.stelle_guide.pojo.MyPage;
import com.example.stelle_guide.pojo.User;
import com.example.stelle_guide.pojo.UserRating;
import com.example.stelle_guide.service.GameService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class GameController {
    @Autowired(required=false)
    GameService gameService;
    @RequestMapping("/selectGame")
    public Map<String,Object> select(MyPage myPage){

        return gameService.select(myPage);

    }

    @RequestMapping("/getGameInfo")
    public String getGameInfo(Integer gid){
        return gameService.getGameInfo(gid);
    }

    @RequestMapping("/searchForMatch")
    public List<Game> searchForMatch(Game game){
        return gameService.searchForMatch(game);
    }

    @RequestMapping("/getChineseTitle")
    public String getChineseTitle(Integer gid){
        return gameService.getChineseTitle(gid);
    }

    @RequestMapping("/getCover")
    public String getCover(Integer gid){
        return gameService.getCover(gid);
    }

    @RequestMapping("/getDeveloperID")
    public Integer getDeveloperID(Integer gid){
        return gameService.getDeveloperID(gid);
    }

    @RequestMapping("/getRating")
    public Float getRating(Integer gid){
        return gameService.getRating(gid);
    }

    @RequestMapping("/getPrice")
    public Float getPrice(Integer gid){
        return gameService.getPrice(gid);
    }

    @RequestMapping("/getRatings")
    public List<UserRating> getRatings(Integer gid){
        return  gameService.getRatings(gid);
    }
}
