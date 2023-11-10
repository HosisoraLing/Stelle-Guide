package com.example.stelle_guide.pojo;

import lombok.Data;

@Data
public class Waitingline {
    private String topic;
    private String message;
    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


}
