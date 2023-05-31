package com.example.stelle_guide.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.stelle_guide.pojo.Game;
import com.example.stelle_guide.pojo.UserRating;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface GameDao extends BaseMapper<Game> {
    List<UserRating> showRatings(@Param("gid") Integer gid);
}
