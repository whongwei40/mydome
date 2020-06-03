package com.bjpowernode.Service.Imp;

import com.bjpowernode.Dao.StudentDao;
import com.bjpowernode.Service.StudentService;
import com.bjpowernode.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImp implements StudentService {
    @Autowired
    private StudentDao studentDao;
    @Override
    public int addStu(Student student) {
        int nus =studentDao.addStu ( student );
        return nus;
    }

    @Override
    public List<Student> verification(String name) {
        System.out.println ("service的name"+name);
        List<Student> students =studentDao.verification ( name );
        return students;
    }
}
