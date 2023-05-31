package com.example.stelle_guide.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.stelle_guide.pojo.GameCompany;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface GameCompanyDao extends BaseMapper<GameCompany> {
}
