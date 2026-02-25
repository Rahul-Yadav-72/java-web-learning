package com.gmail.config;

import jakarta.servlet.MultipartConfigElement;
import jakarta.servlet.ServletRegistration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebInitializer
        extends AbstractAnnotationConfigDispatcherServletInitializer {

    protected Class<?>[] getRootConfigClasses() {
        return null;
    }

    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{WebConfig.class};
    }

    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

    // ✅ Required for file upload (Spring 6)
    @Override
    protected void customizeRegistration(
            ServletRegistration.Dynamic registration) {

        registration.setMultipartConfig(
                new MultipartConfigElement(
                        null,
                        5242880,   // max file size 5MB
                        5242880,
                        0
                )
        );
    }
}