package com.hmz.ssm.service.impl;

import com.hmz.ssm.dao.MessageMapper;
import com.hmz.ssm.model.Message;
import com.hmz.ssm.service.MessageService;
import com.hmz.ssm.util.SeeRecord;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Lenovo on 2017/7/4.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class MessageServiceImpl implements MessageService{
    @Resource
    MessageMapper messageMapper;
    public List<Message> selectMessage(SeeRecord seeRecord) {

        return messageMapper.selectAll(seeRecord);
    }

    public int getCount() {
        return messageMapper.getCount();
    }

    public Message selectMes(int id) {
        return messageMapper.selectMes(id);
    }
}
