package com.bjpowernode.Service;

import com.bjpowernode.domain.Student;

import java.util.List;

public interface StudentService {
    int addStu(Student student);
    List<Student> verification(String name);
}
