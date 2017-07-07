package com.hmz.ssm.service;

import com.hmz.ssm.model.User;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/6/18.
 */
public interface UserService {
    boolean selectUser(String username);
    User selectUserMes(String username);
    int insertUser(User user);
}
