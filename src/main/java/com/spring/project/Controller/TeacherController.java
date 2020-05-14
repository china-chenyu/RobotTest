package com.spring.project.Controller;

import com.spring.project.Dao.MatchsuserMapper;
import com.spring.project.Dao.SchoolMapper;
import com.spring.project.Dao.StudentMapper;
import com.spring.project.Dao.TeacherMapper;
import com.spring.project.Entity.*;
import com.spring.project.Util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Type;
import java.util.List;
import java.util.stream.Stream;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    private ModelAndView mv = new ModelAndView();

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private MatchsuserMapper matchsuserMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private SchoolMapper schoolMapper;


    /**
     * 跳转教师注册
     * @return
     */
    @RequestMapping("/routeRegist")
    public ModelAndView routeRegist(String type){
        if (type.equals("教师")){
            List<School> schools = schoolMapper.selectByExample(null);
            mv.addObject("list",schools);
            mv.setViewName("/teacher_regist");
        }else {
            List<School> schools = schoolMapper.selectByExample(null);
            mv.addObject("list",schools);
            mv.setViewName("/student_regist");
        }
        return mv;
    }

    /**
     * 更新学生信息
     * @return
     */
    @RequestMapping("/updateStudent")
    public ModelAndView updateStudent(Student student){
        studentMapper.updateByPrimaryKey(student);
        mv.setView(new RedirectView("/teacher/findAllStudenBySchool"));
        return mv;
    }

    /**
     * 删除学生信息
     * @return
     */
    @RequestMapping("/delStudenById")
    public ModelAndView delStudenById(Integer id){
        studentMapper.deleteByPrimaryKey(id);
        mv.setView(new RedirectView("/teacher/findAllStudenBySchool"));
        return mv;
    }

    /**
     * 学生信息回显
     * @return
     */
    @RequestMapping("/findStudentById")
    public ModelAndView findStudentById(Integer id){
        Student student = studentMapper.selectByPrimaryKey(id);
        mv.addObject("map",student);
        mv.setViewName("/teacher_student_edit");
        return mv;
    }


    /**
     * 获取本学校学生
     * @return
     */
    @RequestMapping("/findAllStudenBySchool")
    public ModelAndView findAllUserInfo(HttpServletRequest request){
        Cookie C = CookieUtil.getCookieByName(request,"teacherId");
        Integer id = Integer.valueOf( C.getValue());
        Teacher teacher = teacherMapper.selectByPrimaryKey(id);
        String school = teacher.getSchool();

        StudentExample s = new StudentExample();
        StudentExample.Criteria c = s.createCriteria();
        c.andSchoolEqualTo(school);
        List<Student> students = studentMapper.selectByExample(s);
        mv.addObject("list",students);
        mv.setViewName("/teacher_student_info_list");
        return mv;
    }


    /**
     * 删除报名信息
     * @return
     */
    @RequestMapping("/delMatchUserByID")
    public ModelAndView delMatchUserByID(Integer id){
        matchsuserMapper.deleteByPrimaryKey(id);
        mv.setView(new RedirectView("/teacher/findMatchBySchool"));
        return mv;
    }

    /**
     * 更新报名信息
     * @return
     */
    @RequestMapping("/updateMatchsUser")
    public ModelAndView updateMatchsUser(Matchsuser matchsuser){
        matchsuserMapper.updateByPrimaryKey(matchsuser);
        mv.setView(new RedirectView("/teacher/findMatchBySchool"));
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
        mv.setViewName("/teacher_SignUp_edit");
        return mv;
    }

    /**
     * 查询本校报名信息
     * @return
     */
    @RequestMapping("/findMatchBySchool")
    public ModelAndView findMatchBySchool(HttpServletRequest request){
        Cookie C = CookieUtil.getCookieByName(request,"teacherId");
        Integer id = Integer.valueOf( C.getValue());
        Teacher teacher = teacherMapper.selectByPrimaryKey(id);
        String school = teacher.getSchool();

        MatchsuserExample m = new MatchsuserExample();
        MatchsuserExample.Criteria c = m.createCriteria();
        c.andSchoolEqualTo(school);
        List<Matchsuser> matchsusers = matchsuserMapper.selectByExample(m);
        mv.addObject("list",matchsusers);
        mv.setViewName("/teacher_match_result_list");
        return mv;
    }

    /**
     * 注册
     * @return
     */
    @RequestMapping("/regist")
    public ModelAndView regist(Teacher teacher){
        teacherMapper.insert(teacher);
        mv.setViewName("/teacher_login");
        return mv;
    }

    /**
     * 更新个人信息
     * @return
     */
    @RequestMapping("/updateTeacherById")
    public ModelAndView updateTeacherById(Teacher teacher){
        teacherMapper.updateByPrimaryKey(teacher);
        mv.setView(new RedirectView("/teacher/findTeacherById"));
        return mv;
    }

    /**
     * 获取个人信息
     * @return
     */
    @RequestMapping("/findTeacherById")
    public ModelAndView findTeacherById(HttpServletRequest request){
        Cookie C = CookieUtil.getCookieByName(request,"teacherId");
        Integer id = Integer.valueOf( C.getValue());
        Teacher teacher = teacherMapper.selectByPrimaryKey(id);
        mv.addObject("map",teacher);
        mv.setViewName("/teacher_info_edit");
        return mv;
    }

}
