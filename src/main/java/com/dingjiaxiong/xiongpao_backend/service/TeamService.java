package com.dingjiaxiong.xiongpao_backend.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dingjiaxiong.xiongpao_backend.model.domain.Team;
import com.dingjiaxiong.xiongpao_backend.model.domain.User;
import com.dingjiaxiong.xiongpao_backend.model.dto.TeamQuery;
import com.dingjiaxiong.xiongpao_backend.model.request.TeamJoinRequest;
import com.dingjiaxiong.xiongpao_backend.model.request.TeamQuitRequest;
import com.dingjiaxiong.xiongpao_backend.model.request.TeamUpdateRequest;
import com.dingjiaxiong.xiongpao_backend.model.vo.TeamUserVO;

import javax.annotation.Resource;
import java.util.List;

/**
* @author DingJiaxiong
* @description 针对表【team(队伍)】的数据库操作Service
* @createDate 2024-06-30 15:13:57
*/

public interface TeamService extends IService<Team> {

    /**
     * 创建队伍
     *
     * @param team
     * @param loginUser
     * @return
     */
    long addTeam(Team team, User loginUser);

    /**
     * 搜索队伍
     *
     * @param teamQuery
     * @param isAdmin
     * @return
     */
    List<TeamUserVO> listTeams(TeamQuery teamQuery, boolean isAdmin);

    /**
     * 搜索队伍【已加入页面】
     * @param teamQuery
     * @param isAdmin
     * @return
     */
    public List<TeamUserVO> listTeamsWithIds(TeamQuery teamQuery, boolean isAdmin);

    /**
     * 更新队伍
     *
     * @param teamUpdateRequest
     * @param loginUser
     * @return
     */
    boolean updateTeam(TeamUpdateRequest teamUpdateRequest, User loginUser);


    /**
     * 加入队伍
     *
     * @param teamJoinRequest
     * @return
     */
    boolean joinTeam(TeamJoinRequest teamJoinRequest, User loginUser);


    /**
     * 退出队伍
     *
     * @param teamQuitRequest
     * @param loginUser
     * @return
     */
    boolean quitTeam(TeamQuitRequest teamQuitRequest, User loginUser);

    /**
     * 删除（解散）队伍
     *
     * @param id
     * @param loginUser
     * @return
     */
    boolean deleteTeam(long id, User loginUser);

}
