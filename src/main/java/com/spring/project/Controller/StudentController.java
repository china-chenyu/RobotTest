package com.spring.project.Controller;

import com.spring.project.Dao.MatchMapper;
import com.spring.project.Dao.MatchsuserMapper;
import com.spring.project.Dao.StudentMapper;
import com.spring.project.Entity.*;
import com.spring.project.Util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    private ModelAndView mv = new ModelAndView();

    @Autowired
    private MatchMapper matchMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private MatchsuserMapper matchsuserMapper;


    /**
     * 材料上传跳转
     * @return
     */
    @RequestMapping("/routeFile")
    public ModelAndView routeFile(String id){
        mv.addObject("id",id);
        mv.setViewName("/student_file_info_add");
        return mv;
    }

    /**
     * 上传材料
     * @return
     */
    @RequestMapping("/upload")
    public ModelAndView upload(MultipartFile file,String id) throws IOException {
        String filename = file.getOriginalFilename();
        String classpath = this.getClass().getResource("/").getPath()+"static/file/";
        //保存文件
        File f = new File(classpath,filename);
        // 写入文件
        file.transferTo(f);
        matchsuserMapper.upload(id,"file/"+filename);
        mv.setView(new RedirectView("/student/findMatchByStudent"));
        return mv;
    }

    /**
     * 查看拒绝信息
     * @return
     */
    @RequestMapping("/findInfo")
    public ModelAndView findInfo(String id){
        Map<String,Object> ma = matchsuserMapper.findInfo(id);
        mv.addObject("map",ma);
        mv.setViewName("/student_check_result");
        return mv;
    }

    /**
     * 我的报名信息
     * @return
     */
    @RequestMapping("/findMatchByStudent")
    public ModelAndView findMatchByStudent(HttpServletRequest request){
        Cookie C = CookieUtil.getCookieByName(request,"studentId");
        Integer id = Integer.valueOf( C.getValue());
        MatchsuserExample m = new MatchsuserExample();
        MatchsuserExample.Criteria c = m.createCriteria();
        c.andUseridEqualTo(id+"");
        List<Matchsuser> matchsusers = matchsuserMapper.selectByExample(m);
        mv.setViewName("/student_match_result_list");
        mv.addObject("list",matchsusers);

        return mv;
    }


    /**
     * 跳转至报名页面
     * @return
     */
    @RequestMapping("/routeSignUpPage")
    public ModelAndView routeSignUpPage(HttpServletRequest request,Integer matchId){
        Cookie C = CookieUtil.getCookieByName(request,"studentId");
        Integer id = Integer.valueOf( C.getValue());
        Student student = studentMapper.selectByPrimaryKey(id);
        String school = student.getSchool();
        String processionname = student.getProcessionname();
        String username = student.getUsername();

        Match match = matchMapper.selectByPrimaryKey(matchId);
        String type = match.getType();
        String name = match.getName();
        String matchName = type+"-"+name;

        mv.addObject("school",school);
        mv.addObject("processionname",processionname);
        mv.addObject("matchid",matchId);
        mv.addObject("userid",id);
        mv.addObject("name",username);
        mv.addObject("match",matchName);
        mv.setViewName("/student_SignUp_add");
        return mv;
    }


    /**
     * 报名
     * @return
     */
    @RequestMapping("/insertMatch_User")
    public ModelAndView insertMatch_User(Matchsuser matchsuser){
        matchsuser.setState("未审核");
        matchsuserMapper.insert(matchsuser);
        mv.setView(new RedirectView("/student/findAllMatch"));
        return mv;
    }


    /**
     * 注册
     * @return
     */
    @RequestMapping("/regist")
    public ModelAndView regist(Student student){
        studentMapper.insert(student);
        mv.setViewName("/student_login");
        return mv;
    }


    /**
     * 获取全部比赛
     * @return
     */
    @RequestMapping("/findAllMatch")
    public ModelAndView findAllMatch(HttpServletRequest request){
        List<Match> matches = matchMapper.selectByExample(null);
        // 获取已报名的
        Cookie C = CookieUtil.getCookieByName(request,"studentId");
        Integer id = Integer.valueOf( C.getValue());
        List<Map<String,Object>> user = matchMapper.selectMacthUserByUserId(id);
        for (Match match : matches) {
            for (Map<String, Object> map : user) {
                if (match.getId()==Integer.valueOf(map.get("matchid").toString())&&!map.get("state").toString().equals("不通过")){
                    match.setFlag("已报名");
                }else {
                    match.setFlag("未报名");
                }
            }
        }


        mv.addObject("list",matches);
        mv.setViewName("/student_match_info_list");
        return mv;
    }
}
