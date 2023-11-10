package com.example.stelle_guide.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.example.stelle_guide.dao.TopicsDao;
import com.example.stelle_guide.pojo.Msg;
import com.example.stelle_guide.pojo.Topics;
import com.example.stelle_guide.pojo.Waitingline;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class TopicsService {
    @Autowired
    TopicsDao topicsDao;
    MsgService msgService;
    WaitinglineService waitingLineService;
    public String bindID(Integer id, String topic) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("userID",id);
        Topics RS = topicsDao.selectOne(qw);
         if( RS != null) {
             RS.setTopics(RS.getTopics()+","+topic);
             UpdateWrapper update = new UpdateWrapper();
             update.eq("userID",id);
            int num = topicsDao.update(RS, update);
            if (num != 0) {
                return "绑定成功";
            } else {
                return "绑定失败";
            }
        }else {
            return "ID不存在";
        }
    }

    public String createID(Integer id) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("userID",id);
        Topics RS = topicsDao.selectOne(qw);
        if( RS == null) {
            RS.setUserID(id);
            RS.setTopics("");
            int num = topicsDao.insert( RS );
            if (num != 0) {
                return "添加成功";
            } else {
                return "添加失败";
            }
        }else {
            return "ID已被占用";
        }
    }

    public List<Msg> listenByID(Integer id, HttpSession session) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("userID",id);
        Topics RS = topicsDao.selectOne(qw);
        String[] list= RS.getTopics().split(",");
        List<Msg> msgs = null;
        for(String s : list) {
            QueryWrapper qw1=new QueryWrapper();
            qw1.eq("topic", s);
            qw1.orderByDesc("time");
            msgs.add(msgService.selectList(qw1).get(0));
        }
        return msgs;
    }

    public String debindID(Integer id, String topic) {
         QueryWrapper qw = new QueryWrapper();
        qw.eq("userID",id);
        Topics RS = topicsDao.selectOne(qw);
         if( RS != null) {
             String result="";
             for(String s : RS.getTopics().split(",")){
                 if(s.equals(topic)){

                 }else {
                     result=result+","+s;
                 }
             }
             RS.setTopics(result);
             UpdateWrapper update = new UpdateWrapper();
             update.eq("userID",id);
            int num = topicsDao.update(RS, update);
            if (num != 0) {
                return "解绑成功";
            } else {
                return "解绑失败";
            }
        }else {
            return "ID不存在";
        }
    }

    public String bindingList(Integer id) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("userID",id);

        Topics RS = topicsDao.selectOne(qw);
        return RS.getTopics();
    }

    public String sendData(String topic, String data) {
        return waitingLineService.loadBuffer(topic, data);
    }
    public List<Msg> getHistory(String topic) {
        QueryWrapper qw=new QueryWrapper();
        qw.eq("topic", topic);
        return msgService.selectList(qw);
    }

    public String subcribeTopic() {
        QueryWrapper qw=new QueryWrapper();
        qw.isNotNull("userID");
        String sub="";
        List list=topicsDao.selectList(qw);
        for (int i=0; i<list.size(); i++) {
            Topics a= (Topics) list.get(i);
            sub=sub+","+a.getTopics();
        }
        return sub;
    }

    public List<Waitingline> PySendMessage() {
        return waitingLineService.getBuffer();
    }
}
