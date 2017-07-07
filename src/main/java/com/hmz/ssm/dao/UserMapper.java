package com.hmz.ssm.dao;

import com.hmz.ssm.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    boolean selectUser(String username);

    User selecustUserMes(String username);

    int insertUser(User user);
}