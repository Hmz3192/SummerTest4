package com.hmz.ssm.service.impl;

import com.hmz.ssm.dao.UserMapper;
import com.hmz.ssm.model.User;
import com.hmz.ssm.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/6/18.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    public boolean selectUser(String username) {
        return userMapper.selectUser(username);
    }

    public User selectUserMes(String username) {
        return userMapper.selecustUserMes(username);
    }

    public int insertUser(User user) {
        return userMapper.insertUser(user);
    }
}
