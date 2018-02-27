package com.hmz.ssm.service;

import com.hmz.ssm.model.Collect;

import java.util.List;

/**
 * Created by Lenovo on 2017/7/4.
 */
public interface CollectService {

    int insertColle(Collect collect);

    List<Collect> selectColl(int uid);


}
