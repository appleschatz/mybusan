package com.mybusan.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import com.mybusan.interceptor.LoginInterceptor;

public class Webconfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/**") // 인터셉터를 적용할 경로 지정
                .excludePathPatterns(); // 인터셉터에서 제외할 경로 지정
    }
}
