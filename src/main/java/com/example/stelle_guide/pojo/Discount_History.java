package com.example.stelle_guide.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.util.Date;

@Data
public class Discount_History {
    @TableId(value = "gid")
    private Integer gid;
    private Float discountratio;
    private Float discountprice;
    private Date time;
}
