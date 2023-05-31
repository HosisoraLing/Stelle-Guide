package com.example.stelle_guide.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Game {
    @TableId(value = "gid",type = IdType.AUTO)
    private Integer gid;
    private Float rating;
    private Integer numberofratings;
    private String chinesetitle;
    private String englishtitle;
    private String cover;
    private String linktostore;
    private Integer steamstoreid;
    private Integer developerid;
    private String developer;
    private Integer publisherid;
    private String isdiscount;
    private Float defaultprice;
    private String alltimelowprice;
    private String info;
    private Float alltimelowratio;
    private String theme;
    private String type;
    private Integer year;
    private String brief;
}
