package com.example.stelle_guide.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Userrating {
    @TableId(value = "rid",type = IdType.AUTO)
    private Integer rid;
    private Integer gid;
    private Integer uid;
    private Integer rating;
    private String time;
    private Integer performance;
    private Integer graphic;
    private Integer story;
    private Integer gameplay;
    private Integer lifetime;
    private Integer pricetofunratio;
    private String comment;
    private Integer agree;
    private Integer disagree;
    private Integer useful;
    private Integer funny;
    private Integer shit;
    private Integer voiceofpeople;
    private String avatar;
    private String nickname;
}
