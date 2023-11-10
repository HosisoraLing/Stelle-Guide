package com.example.stelle_guide.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.stelle_guide.pojo.Waitingline;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface WaitinglineDao extends BaseMapper<Waitingline> {
}
