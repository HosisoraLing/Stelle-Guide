package com.example.stelle_guide.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class User {
    @TableId(value = "uid",type = IdType.AUTO)
    private Integer uid;
    private String nickname;
    private String steamid;
    private String username;
    private String password;
    private String email;
    private Integer permissionlevel;
}
