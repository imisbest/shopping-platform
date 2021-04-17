package com.csw;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.com.csw.dao")
public class ShoppingPlatformApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShoppingPlatformApplication.class, args);
    }

}
