package com.hmz.ssm.controller;

import com.hmz.ssm.model.Message;
import com.hmz.ssm.service.MessageService;
import com.hmz.ssm.service.impl.MessageServiceImpl;
import com.hmz.ssm.util.Page;
import com.hmz.ssm.util.SeeRecord;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/6/18.
 */
@Controller
@RequestMapping("/message")
@SessionAttributes("userid")
public class MessageController {


    @Resource
    MessageService messageService;
    @RequestMapping("/showMes")
    public String showMes(Model model , SeeRecord seeRecord, String pageNow) {
        Page page = null;//new 对象在下面
        int totalCount = messageService.getCount();//获取总记录条数
        if(pageNow==null){
            pageNow="1";
        }
        if(pageNow != null && pageNow != "") {//防止出现空指针异常
            int pageNow1 = Integer.parseInt(pageNow);
            page = new Page(totalCount, pageNow1);//这样写的好处，判断完成外面可以继续调用
        }
        seeRecord.setPage(page);
        model.addAttribute("page",page);

        List<Message> messageList=messageService.selectMessage(seeRecord);
        model.addAttribute("mesList",messageList);
        return "Message";
    }






}
