package com.example.stelle_guide.controller;

import com.alibaba.fastjson.TypeReference;
import com.example.stelle_guide.dao.MsgDao;
import com.example.stelle_guide.pojo.Msg;
import com.example.stelle_guide.service.MsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static com.alibaba.fastjson.JSON.parseObject;

@RestController
public class MsgController {
    @Autowired
    MsgService msgService;
    @RequestMapping("/getPythonData")
    public ResponseEntity<String> receiveData(@RequestBody String data) {
        // 在这里处理接收到的数据
        // YourDataClass应该是您定义的类，用于表示接收到的数据结构
        System.out.println("Received data: " + data);
        Msg msg = parseObject(data , new TypeReference<Msg>() {});
        int num=msgService.getPythonData(msg);
        if (num==1){
            return ResponseEntity.ok("Data received successfully.");
        }else {
            System.out.println("存入数据库失败");
            return ResponseEntity.ok("Data received successfully,but failed to store in database.");
        }
    }
    @RequestMapping("/selectMessage")
    public List<Msg> selectMessage(){
        return msgService.selectMessage();
    }
}
