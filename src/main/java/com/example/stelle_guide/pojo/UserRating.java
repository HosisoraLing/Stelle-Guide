package com.example.stelle_guide.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.util.Date;

@Data
public class UserRating {
    @TableId(value = "gid")
    private Integer gid;
    private Integer uid;
    private Integer rating;
    private Date time;
    private Integer performance;
    private Integer graphic;
    private Integer story;
    private Integer gameplay;
    private Integer lifetime;
    private Integer pricetofunratio;
    private String comment;
}
