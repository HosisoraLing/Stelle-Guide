package com.example.stelle_guide.config;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MybatisConfig {

    @Bean
    public MybatisPlusInterceptor myPage(){
        MybatisPlusInterceptor mpi = new MybatisPlusInterceptor();
        //PaginationInnerInterceptor分页查询
        mpi.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL));
        return mpi;
    }

}
