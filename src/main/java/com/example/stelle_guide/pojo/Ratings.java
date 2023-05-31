package com.example.stelle_guide.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Ratings {
    @TableId(value = "gid")
    private Integer gid;
    private Float rating;
}
