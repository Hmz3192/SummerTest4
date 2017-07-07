package com.hmz.ssm.dao;

import com.hmz.ssm.model.Collect;
import com.hmz.ssm.model.Message;
import com.hmz.ssm.util.SeeRecord;

import java.util.List;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message recrd);

    List<Message> selectAll(SeeRecord seeRecord);

    Message selectMes(int id);

    int getCount();

    List<Message> selectColle(Collect collect);
}