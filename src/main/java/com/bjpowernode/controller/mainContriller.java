package com.bjpowernode.controller;

import com.bjpowernode.Service.StudentService;
import com.bjpowernode.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class mainContriller {
    @Autowired
    private StudentService studentService;
    @RequestMapping(value = "addstu")
    public ModelAndView addstu(Student student){
        ModelAndView modelAndView =new ModelAndView (  );
        int nums =studentService.addStu ( student );
        if (nums==1){
            modelAndView.addObject ( "mgs","添加成功" );
            modelAndView.setViewName ( "sucess" );
        }else {
            modelAndView.addObject ( "mgs","注册失败" );
            modelAndView.setViewName ( "fail" );
        }
        return modelAndView;
    }
    @RequestMapping("tojsp")
    public String tojsp (String jspname){
        System.out.println ("处理器tojsp方法启动");
        return jspname;
    }
    @RequestMapping("verification")
    public ModelAndView verification (String name){
        System.out.println ("处理器的name"+name);
        ModelAndView mv =new ModelAndView (  );
        List<Student> studentList =studentService.verification ( name );
        if (studentList.size ()>0){
            mv.addObject ( "true","验证成功" );
            mv.setViewName ( "MainPage" );
        }
        return mv;
    }
}
