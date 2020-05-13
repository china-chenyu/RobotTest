package com.spring.project.Controller;

import com.spring.project.Dao.NoticeMapper;
import com.spring.project.Dao.RuleMapper;
import com.spring.project.Entity.Notice;
import com.spring.project.Entity.Rule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/index")
public class IndexController {


    private ModelAndView mv = new ModelAndView();

    @Autowired
    private NoticeMapper noticeMapper;

    @Autowired
    private RuleMapper ruleMapper;


    /**
     * 回显
     * @return
     */
    @RequestMapping("/findRuleById")
    public ModelAndView findRuleById(Integer id){
        Rule notice = ruleMapper.selectByPrimaryKey(id);
        mv.addObject("map",notice);
        mv.setViewName("/rule_info");
        return mv;
    }

    /**
     * 获取全部规则
     * @return
     */
    @RequestMapping("/findAllRule")
    public ModelAndView findAllRule(){
        List<Rule> notices = ruleMapper.selectByExample(null);
        mv.addObject("noticeList",notices);
        mv.setViewName("/rule");
        return mv;
    }

    /**
     * 回显
     * @return
     */
    @RequestMapping("/findNoticeById")
    public ModelAndView findNoticeById(Integer id){
        Notice notice = noticeMapper.selectByPrimaryKey(id);
        mv.addObject("map",notice);
        mv.setViewName("/notice_info");
        return mv;
    }

    /**
     * 获取全部通知
     * @return
     */
    @RequestMapping("/findAllNotice")
    public ModelAndView findAllNotice(){
        List<Notice> notices = noticeMapper.selectByExample(null);
        mv.addObject("noticeList",notices);
        mv.setViewName("/notice");
        return mv;
    }
}
