package com.hmz.ssm.dao;

import com.hmz.ssm.model.Collect;

import java.util.List;

public interface CollectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Collect record);

    int insertSelective(Collect record);

    Collect selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Collect record);

    int updateByPrimaryKey(Collect record);
    List<Collect> selectColle(int uid);

    int insertColle(Collect collect);
}