package com.dingjiaxiong.xiongpao_backend;

import org.mybatis.spring.annotation.MapperScan;
import org.redisson.spring.session.config.EnableRedissonHttpSession;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

@SpringBootApplication
@MapperScan("com.dingjiaxiong.xiongpao_backend.mapper")
@EnableScheduling
public class XiongPaoBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(XiongPaoBackendApplication.class, args);
    }

}
