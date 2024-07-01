package com.dingjiaxiong.xiongpao_backend.once.importuser;

import com.dingjiaxiong.xiongpao_backend.mapper.UserMapper;
import com.dingjiaxiong.xiongpao_backend.model.domain.User;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

import javax.annotation.Resource;

/**
 * 导入用户任务
 *
 * @author Ding Jiaxiong
 */
//@Component
public class InsertUsers {

    @Resource
    private UserMapper userMapper;

    /**
     * 批量插入用户
     */
//    @Scheduled(initialDelay = 5000, fixedRate = Long.MAX_VALUE)
    public void doInsertUsers() {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        final int INSERT_NUM = 1000;
        for (int i = 0; i < INSERT_NUM; i++) {
            User user = new User();
            user.setUsername("momo");
            user.setUserAccount("littlemomo");
            user.setAvatarUrl("https://b0.bdstatic.com/a367e9334848fe281131e135610ccaa4.jpg@h_1280");
            user.setGender(0);
            user.setUserPassword("12345678");
            user.setPhone("123");
            user.setEmail("123@qq.com");
            user.setTags("[]");
            user.setUserStatus(0);
            user.setUserRole(0);
            user.setPlanetCode("11111111");
            userMapper.insert(user);
        }
        stopWatch.stop();
        System.out.println(stopWatch.getTotalTimeMillis());
    }
}
