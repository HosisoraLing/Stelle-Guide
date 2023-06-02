package com.example.stelle_guide.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class AvatarConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        String path = "file:E:\\Stelle Guide\\avatar\\";
        registry.addResourceHandler("/updateAvatar/**").addResourceLocations(path);
    }
}
