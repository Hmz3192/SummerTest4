package com.hmz.ssm.service;

import com.hmz.ssm.model.Message;
import com.hmz.ssm.util.SeeRecord;

import java.util.List;

/**
 * Created by Lenovo on 2017/7/4.
 */
public interface MessageService {

    List<Message> selectMessage(SeeRecord seeRecord);

    int getCount();

    Message selectMes(int id);
}
