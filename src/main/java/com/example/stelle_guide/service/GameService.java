package com.example.stelle_guide.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.stelle_guide.dao.GameDao;
import com.example.stelle_guide.pojo.Game;
import com.example.stelle_guide.pojo.MyPage;
import com.example.stelle_guide.pojo.UserRating;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GameService {
    @Autowired
    GameDao gameDao;


    public Map<String, Object> select(MyPage myPage){
        Page<Game> page=new Page<Game>(myPage.getPage(), myPage.getSize());
        //调用持久层，参数：分页对象，查询条件，查询结果返回给分页对象
        page = gameDao.selectPage(page,null);
        //获取总页数
        Long total = page.getPages();
        //获取总数量
        Long size = page.getSize();
        //查询到的数据
        List<Game> list = page.getRecords();
        //创建一个集合对象保存total，size，list
        HashMap<String,Object> map = new HashMap<String,Object>();
        map.put("total",total);
        map.put("size",size);
        map.put("list",list);
        return map;

    }

    public List<Game> searchForMatch(Game game) {
        QueryWrapper qw = new QueryWrapper(game);
        List gameRs=gameDao.selectList(qw);
        return gameRs;
    }

    public String getChineseTitle(Integer gid) {
        Game gameRs=gameDao.selectById(gid);
        return gameRs.getChinesetitle();
    }

    public String getCover(Integer gid) {
        Game gameRs=gameDao.selectById(gid);
        return gameRs.getCover();

    }

    public Integer getDeveloperID(Integer gid) {
        Game gameRs=gameDao.selectById(gid);
        return gameRs.getDeveloperid();
    }

    public List<UserRating> getRatings(Integer gid){
        return gameDao.showRatings(gid);
    }

    public String getGameInfo(Integer gid) {
        Game gameRs=gameDao.selectById(gid);
        return gameRs.getInfo();
    }

    public Float getRating(Integer gid) {
        Game gameRS=gameDao.selectById(gid);
        return gameRS.getRating();
    }

    public Float getPrice(Integer gid) {
        Game gameRs=gameDao.selectById(gid);
        return gameRs.getDefaultprice();
    }
}
