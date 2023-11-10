package com.example.stelle_guide.controller;

import com.example.stelle_guide.pojo.Msg;
import com.example.stelle_guide.pojo.Waitingline;
import com.example.stelle_guide.service.TopicsService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TopicsController {
    @Autowired
    TopicsService topicsService;
    @RequestMapping("/createID")
    public String createID(Integer id) {
        return topicsService.createID(id);
    }
    @RequestMapping("/bindID")
    public String bindID(Integer id, String topic){
        return topicsService.bindID(id, topic);
    }
    @RequestMapping("/debindID")
    public String debindID(Integer id,String topic){
        return topicsService.debindID(id, topic);
    }
    @RequestMapping("/bindingList")
    public String bindingList(Integer id){
        return topicsService.bindingList(id);
    }
    @RequestMapping("/listenByID")
    public List<Msg> listenByID(Integer id, HttpSession session){
        return topicsService.listenByID(id, session);
    }
    @RequestMapping("/sendData")
    public String sendData(String topic,String data){
        return topicsService.sendData(topic,data);
    }
    @RequestMapping("/GetHistory")
    public List<Msg> getHistory(String topic){
        return topicsService.getHistory(topic);
    }
    @RequestMapping("/subscribeTopic")
    public String subscribeTopic(){
        return topicsService.subcribeTopic();
    }
    @RequestMapping("/PySendMessage")
    public List<Waitingline> sendMessage(){
        return topicsService.PySendMessage();
    }
}