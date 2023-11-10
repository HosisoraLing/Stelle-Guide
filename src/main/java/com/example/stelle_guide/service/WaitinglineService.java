package com.example.stelle_guide.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.stelle_guide.dao.WaitinglineDao;
import com.example.stelle_guide.pojo.Waitingline;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WaitinglineService {
    @Autowired
    WaitinglineDao waitingLineDao;
    public String loadBuffer(String topic, String message) {
        Waitingline line = new Waitingline();
        line.setTopic(topic);
        line.setMessage(message);
        int num = waitingLineDao.insert(line);
            if (num != 0) {
                return "已加入发送队列";
            } else {
                return "加入发送队列失败";
            }
    }
    public List<Waitingline> getBuffer() {
        QueryWrapper qw = new QueryWrapper();
        qw.isNotNull("topic");
        List<Waitingline> RS = waitingLineDao.selectList(qw);
        Integer i=waitingLineDao.delete(qw);
        return RS;
    }
}
