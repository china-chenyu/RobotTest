package com.spring.project.Controller;

import com.spring.project.Dao.*;
import com.spring.project.Entity.*;
import com.spring.project.Util.PagesUtil;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private ModelAndView mv = new ModelAndView();

    @Autowired
    private AdminMapper adminMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private MatchsuserMapper matchsuserMapper;

    @Autowired
    private NoticeMapper noticeMapper;

    @Autowired
    private RuleMapper ruleMapper;

    @Autowired
    private SchoolMapper schoolMapper;

    /**
     * 下载资料
     * @return
     */
    @RequestMapping("/onloadFile")
    public ResponseEntity<byte[]> onloadFile(String filePath, HttpServletResponse response, HttpServletRequest request) throws IOException {
        String classpath = this.getClass().getResource("/").getPath()+"static/"+filePath;
        // 下载
        java.io.File fileOut = new java.io.File(classpath);
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/force-download");
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setContentDispositionFormData("attachment",new String(filePath.split("/")[1].getBytes("UTF-8"),"ISO-8859-1"));
        httpHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);


        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(fileOut),httpHeaders, HttpStatus.CREATED);
    }


    /**
     * 拒绝理由
     * @return
     */
    @RequestMapping("/updateS")
    public ModelAndView updateS(String id,String info){
        matchsuserMapper.updateS(id,info);
        mv.addObject("pageNum",1);
        mv.setView(new RedirectView("/admin/findAllMatchUser"));
        return mv;
    }

    /**
     * 新增学校
     * @return
     */
    @RequestMapping("/insertSchool")
    public ModelAndView insertSchool(School school){
        schoolMapper.insert(school);
        mv.setView(new RedirectView("/admin/findAllSchool"));
        mv.addObject("pageNum",1);
        return mv;
    }

    /**
     *
     * 删除学校
     * @return
     */
    @RequestMapping("/delSchool")
    public ModelAndView delSchool(Integer id){
        schoolMapper.deleteByPrimaryKey(id);
        mv.setView(new RedirectView("/admin/findAllSchool"));
        mv.addObject("pageNum",1);
        return mv;
    }


    /**
     * 全部学校
     * @return
     */
    @RequestMapping("/findAllSchool")
    public ModelAndView findAllSchool(int pageNum){
        List<School> schools = schoolMapper.selectByExample(null);
        int totalPage = schools.size() % 10 == 0 ? schools.size() / 10 : schools.size() / 10 + 1;
        List<School> page = PagesUtil.page(schools, 10, pageNum);
        mv.addObject("totalPage",totalPage);
        mv.addObject("pageNum",pageNum);
        mv.setViewName("/admin_school_info_list");
        mv.addObject("list",page);
        return mv;
    }


    /**
     * 删除报名信息
     * @return
     */
    @RequestMapping("/delMatchUserByID")
    public ModelAndView delMatchUserByID(Integer id){
        matchsuserMapper.deleteByPrimaryKey(id);
        mv.addObject("pageNum",1);
        mv.setView(new RedirectView("/admin/findAllMatch"));
        return mv;
    }

    /**
     * 更新报名信息
     * @return
     */
    @RequestMapping("/updateMatchsUser")
    public ModelAndView updateMatchsUser(Matchsuser matchsuser){
        matchsuserMapper.updateByPrimaryKey(matchsuser);
        mv.addObject("pageNum",1);
        mv.setView(new RedirectView("/admin/findAllMatch"));
        return mv;
    }

    /**
     * 报名信息回显
     * @return
     */
    @RequestMapping("/findMatchUserById")
    public ModelAndView findMatchUserById(Integer id){
        Matchsuser matchsuser = matchsuserMapper.selectByPrimaryKey(id);
        mv.addObject("map",matchsuser);
        mv.setViewName("/admin_match_edit");
        return mv;
    }


    /**
     * 查询全部报名信息
     * @return
     */
    @RequestMapping("/findAllMatch")
    public ModelAndView findAllMatch(int pageNum){
        List<Matchsuser> matchsusers = matchsuserMapper.selectByExample(null);
        int totalPage = matchsusers.size() % 10 == 0 ? matchsusers.size() / 10 : matchsusers.size() / 10 + 1;
        List<Matchsuser> page = PagesUtil.page(matchsusers, 10, pageNum);
        mv.addObject("totalPage",totalPage);
        mv.addObject("pageNum",pageNum);
        mv.addObject("list",page);
        mv.setViewName("/admin_match_list");
        return mv;
    }


    /**
     * 删除规则
     * @return
     */
    @RequestMapping("/delRuleById")
    public ModelAndView delRuleById(Integer id){
        ruleMapper.deleteByPrimaryKey(id);
        mv.addObject("pageNum",1);
        mv.setView(new RedirectView("/admin/findAllRule"));
        return mv;
    }


    /**
     * 获取全部规则
     * @return
     */
    @RequestMapping("/findAllRule")
    public ModelAndView findAllRule(int pageNum){
        List<Rule> notices = ruleMapper.selectByExample(null);
        int totalPage = notices.size() % 2 == 0 ? notices.size() / 2 : notices.size() / 2 + 1;
        List<Rule> page = PagesUtil.page(notices, 2, pageNum);
        mv.addObject("totalPage",totalPage);
        mv.addObject("pageNum",pageNum);
        mv.addObject("list",page);
        mv.setViewName("/admin_rule_info_list");
        return mv;
    }

    /**
     * 保存规则
     * @return
     */
    @RequestMapping("/insertRule")
    public ModelAndView insertRule(Rule rule){
        ruleMapper.insert(rule);

        return mv;
    }


    /**
     * 删除留言
     * @return
     */
    @RequestMapping("/delNoticeById")
    public ModelAndView delNoticeById(Integer id){
        noticeMapper.deleteByPrimaryKey(id);
        mv.addObject("pageNum",1);
        mv.setView(new RedirectView("/admin/findAllNotice"));
        return mv;
    }


    /**
     * 获取全部留言
     * @return
     */
    @RequestMapping("/findAllNotice")
    public ModelAndView findAllNotice(int pageNum){
        List<Notice> notices = noticeMapper.selectByExample(null);
        int totalPage = notices.size() % 10 == 0 ? notices.size() / 10 : notices.size() / 10 + 1;
        List<Notice> page = PagesUtil.page(notices, 10, pageNum);
        mv.addObject("totalPage",totalPage);
        mv.addObject("pageNum",pageNum);
        mv.addObject("list",page);
        mv.setViewName("/admin_notice_info_list");
        return mv;
    }

    /**
     * 保存通知
     * @return
     */
    @RequestMapping("/insertNotice")
    public ModelAndView insertNotice(Notice notice){
        noticeMapper.insert(notice);

        return mv;
    }

    /**
     * 修改状态
     * @return
     */
    @RequestMapping("/updateState")
    public ModelAndView updateState(Matchsuser matchsuser){
        MatchsuserExample m = new MatchsuserExample();
        MatchsuserExample.Criteria c = m.createCriteria();
        c.andIdEqualTo(matchsuser.getId());
        c.andStateEqualTo(matchsuser.getState());
        matchsuserMapper.updateByPrimaryKeySelective(matchsuser);
        if (matchsuser.getState().equals("审核通过")){
            mv.addObject("pageNum",1);
            mv.setView(new RedirectView("/admin/findAllMatchUser"));
        }else {
            mv.setViewName("/admin_check_result");
            mv.addObject("id",matchsuser.getId());
        }
        return mv;
    }


    /**
     * 查询全部报名信息
     * @return
     */
    @RequestMapping("/findAllMatchUser")
    public ModelAndView findAllMatchUser(int pageNum){
        List<Map<String,Object>> matchsusers = matchsuserMapper.findAll();
        int totalPage = matchsusers.size() % 10 == 0 ? matchsusers.size() / 10 : matchsusers.size() / 10 + 1;
        List<Map<String,Object>> page = PagesUtil.page(matchsusers, 10, pageNum);
        mv.addObject("totalPage",totalPage);
        mv.addObject("pageNum",pageNum);
        mv.addObject("list",page);
        mv.setViewName("/admin_match_result_list");
        return mv;
    }


    /**
     * 登录 管理员 教师 学生
     * @param username
     * @param password
     * @param type
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView login(HttpServletResponse response, String username, String password, String type){
        if (type.equals("管理员")){
            AdminExample adminExample = new AdminExample();
            AdminExample.Criteria ac = adminExample.createCriteria();
            ac.andUsernameEqualTo(username);
            // select * from admin where username = 'xx'
            List<Admin> admins = adminMapper.selectByExample(adminExample);
            //
            if (admins.size()!=0){
                String ps = admins.get(0).getPassword();
                if (ps.equals(password)){
                    // 密码正确
                    Cookie cookie = new Cookie("adminLogin",username);
                    cookie.setMaxAge(30 * 60);// 设置存在时间为30分钟
                    cookie.setPath("/");//设置作用域
                    response.addCookie(cookie);
                    // 调用接口
                    mv.addObject("pageNum",1);
                    mv.setView(new RedirectView("/admin/findAllMatchUser"));
                    return mv;
                }else {
                    // 跳转页面
                    mv.setViewName("/admin_login");
                    mv.addObject("ms","用户名不存在或密码错误！");
                    return mv;
                }

            }else {
                mv.setViewName("/admin_login");
                mv.addObject("ms","用户名不存在或密码错误！");
                return mv;
            }
        }

        if (type.equals("学生")){
            StudentExample ex = new StudentExample();
            StudentExample.Criteria cr = ex.createCriteria();
            cr.andUsernameEqualTo(username);
            List<Student> students = studentMapper.selectByExample(ex);
            if (students.size()!=0){
                String ps = students.get(0).getPassword();
                if (ps.equals(password)){
                    // 密码正确
                    Cookie cookie = new Cookie("student",username);
                    cookie.setMaxAge(30 * 60);// 设置存在时间为30分钟
                    cookie.setPath("/");//设置作用域
                    response.addCookie(cookie);
                    Cookie cookie1 = new Cookie("studentId",students.get(0).getId()+"");
                    cookie1.setMaxAge(30 * 60);// 设置存在时间为30分钟
                    cookie1.setPath("/");//设置作用域
                    response.addCookie(cookie1);
                    mv.addObject("pageNum",1);
                    mv.setView(new RedirectView("/student/findAllMatch"));
                    return mv;
                }else {
                    mv.setViewName("/student_login");
                    mv.addObject("ms","用户名不存在或密码错误！");
                    return mv;
                }

            }else {
                mv.setViewName("/student_login");
                mv.addObject("ms","用户名不存在或密码错误！");
                return mv;
            }
        }

        if (type.equals("教师")){
            TeacherExample ex = new TeacherExample();
            TeacherExample.Criteria cr = ex.createCriteria();
            cr.andUsernameEqualTo(username);
            List<Teacher> specialists = teacherMapper.selectByExample(ex);
            if (specialists.size()!=0){
                String ps = specialists.get(0).getPassword();
                if (ps.equals(password)){
                    // 密码正确
                    Cookie cookie = new Cookie("teacherId",specialists.get(0).getId()+"");
                    cookie.setMaxAge(30 * 60);// 设置存在时间为30分钟
                    cookie.setPath("/");//设置作用域
                    response.addCookie(cookie);
                    mv.setView(new RedirectView("/teacher/findTeacherById"));
                    return mv;
                }else {
                    mv.setViewName("/teacher_login");
                    mv.addObject("ms","用户名不存在或密码错误！");
                    return mv;
                }

            }else {
                mv.setViewName("/teacher_login");
                mv.addObject("ms","用户名不存在或密码错误！");
                return mv;
            }
        }


        return mv;
    }
}
