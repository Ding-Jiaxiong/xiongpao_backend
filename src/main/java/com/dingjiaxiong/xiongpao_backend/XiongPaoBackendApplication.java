package com.dingjiaxiong.xiongpao_backend;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.dingjiaxiong.xiongpao_backend.mapper")
public class XiongPaoBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(XiongPaoBackendApplication.class, args);
    }

}
