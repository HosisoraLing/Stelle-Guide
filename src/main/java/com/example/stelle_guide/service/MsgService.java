package com.example.stelle_guide.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.stelle_guide.dao.MsgDao;
import com.example.stelle_guide.pojo.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MsgService {
    @Autowired
    MsgDao msgDao;

    public int getPythonData(Msg data) {


        int num = msgDao.insert(data);
        if (num != 0) {
            return 1;
        }else{
            return 0;
        }
    }

    public List<Msg> selectMessage() {
        QueryWrapper qw=new QueryWrapper();
        qw.isNotNull("MsgID");

        return msgDao.selectList(qw);
    }

    public List<Msg> selectList(QueryWrapper qw) {
        return msgDao.selectList(qw);
    }
}
