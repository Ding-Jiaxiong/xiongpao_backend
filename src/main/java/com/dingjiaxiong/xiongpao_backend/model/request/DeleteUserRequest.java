package com.dingjiaxiong.xiongpao_backend.model.request;

import lombok.Data;

/**
 * 删除用户请求体
 */

@Data
public class DeleteUserRequest {

    private static final long serialVersionUID = 3191241716373120793L;

    /**
     * 用户ID
     */
    private long id;

}
