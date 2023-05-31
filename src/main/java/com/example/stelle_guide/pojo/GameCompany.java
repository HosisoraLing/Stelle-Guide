package com.example.stelle_guide.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class GameCompany {
   @TableId(value = "companyID",type = IdType.AUTO)
   private Integer companyid;
   private String companyname;
   private String englishname;
}
