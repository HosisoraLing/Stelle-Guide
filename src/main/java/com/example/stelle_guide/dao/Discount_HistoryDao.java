package com.example.stelle_guide.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.stelle_guide.pojo.Discount_History;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface Discount_HistoryDao extends BaseMapper<Discount_History> {
}
