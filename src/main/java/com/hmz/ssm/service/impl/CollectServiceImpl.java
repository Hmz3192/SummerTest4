package com.hmz.ssm.service.impl;

import com.hmz.ssm.dao.CollectMapper;
import com.hmz.ssm.model.Collect;
import com.hmz.ssm.service.CollectService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Lenovo on 2017/7/4.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class CollectServiceImpl implements CollectService{

    @Resource
    CollectMapper collectMapper;

    public int insertColle(Collect collect) {
        return collectMapper.insertColle(collect);
    }

    public List<Collect> selectColl(int uid) {
        return collectMapper.selectColle(uid);
    }
}
