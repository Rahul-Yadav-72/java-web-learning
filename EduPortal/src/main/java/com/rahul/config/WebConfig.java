package com.rahul.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.rahul")
public class WebConfig implements WebMvcConfigurer {

    // 1. Static Files (CSS/JS) ko access dene ke liye
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Yeh line ensure karti hai ki aapka /resources/css/... folder access ho sake
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    // 2. Views (JSP) resolution ke liye
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.jsp("/WEB-INF/views/", ".jsp");
    }
} 