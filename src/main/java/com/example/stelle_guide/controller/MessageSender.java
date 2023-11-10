//package com.example.stelle_guide.controller;
//
//import org.springframework.amqp.core.AmqpTemplate;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//
//@Component
//public class MessageSender {
//    @Autowired
//    private AmqpTemplate amqpTemplate;
//
//    public void sendMessage(String message) {
//        amqpTemplate.convertAndSend("myQueue", message);
//        System.out.println("消息发送成功: " + message);
//    }
//}
