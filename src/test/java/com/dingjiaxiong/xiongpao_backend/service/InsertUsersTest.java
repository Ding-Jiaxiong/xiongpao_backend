package com.dingjiaxiong.xiongpao_backend.service;

import com.dingjiaxiong.xiongpao_backend.mapper.UserMapper;
import com.dingjiaxiong.xiongpao_backend.model.domain.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.StopWatch;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.*;

/**
 * 导入用户测试
 *
 * @author Ding Jiaxiong
 */
@SpringBootTest
public class InsertUsersTest {

    @Resource
    private UserService userService;

    private ExecutorService executorService = new ThreadPoolExecutor(40, 1000, 10000, TimeUnit.MINUTES, new ArrayBlockingQueue<>(10000));

    @Resource
    private UserMapper userMapper;

    /**
     * 批量插入用户
     */
//    @Test
//    public void doInsertUsers() {
//        StopWatch stopWatch = new StopWatch();
//        stopWatch.start();
//        final int INSERT_NUM = 100000;
//        List<User> userList = new ArrayList<>();
//        for (int i = 0; i < INSERT_NUM; i++) {
//            User user = new User();
//            user.setUsername("momo");
//            user.setUserAccount("littlemomo");
//            user.setAvatarUrl("https://b0.bdstatic.com/a367e9334848fe281131e135610ccaa4.jpg@h_1280");
//            user.setGender(0);
//            user.setUserPassword("12345678");
//            user.setPhone("123");
//            user.setEmail("123@qq.com");
//            user.setTags("[]");
//            user.setUserStatus(0);
//            user.setUserRole(0);
//            user.setPlanetCode("11111111");
//            userList.add(user);
//
//
//        }
//        userService.saveBatch(userList, 10000);
//        stopWatch.stop();
//        System.out.println(stopWatch.getTotalTimeMillis());
//    }

    /**
     * 并发批量插入用户
     */
//    @Test
//    public void doConcurrencyInsertUsers() {
//        StopWatch stopWatch = new StopWatch();
//        stopWatch.start();
//        // 分十组
//        int batchSize = 4000;
//        int j = 0;
//        List<CompletableFuture<Void>> futureList = new ArrayList<>();
//        for (int i = 0; i < 100; i++) {
//            List<User> userList = new ArrayList<>();
//            while (true) {
//                j++;
//                User user = new User();
//                user.setUsername("momo");
//                user.setUserAccount("xiongpaomomo");
//                user.setAvatarUrl("https://b0.bdstatic.com/a367e9334848fe281131e135610ccaa4.jpg@h_1280");
//                user.setGender(0);
//                user.setUserPassword("12345678");
//                user.setPhone("123");
//                user.setEmail("123@qq.com");
//                user.setTags("[]");
//                user.setUserStatus(0);
//                user.setUserRole(0);
//                user.setPlanetCode("11111111");
//                userList.add(user);
//                if (j % batchSize == 0) {
//                    break;
//                }
//            }
//            // 异步执行
//            CompletableFuture<Void> future = CompletableFuture.runAsync(() -> {
//                System.out.println("threadName: " + Thread.currentThread().getName());
//                userService.saveBatch(userList, batchSize);
//            }, executorService);
//            futureList.add(future);
//        }
//        CompletableFuture.allOf(futureList.toArray(new CompletableFuture[]{})).join();
//        // 20 秒 10 万条
//        stopWatch.stop();
//        System.out.println(stopWatch.getTotalTimeMillis());
//    }
}
