package com.bjpowernode.Dao;

import com.bjpowernode.domain.Student;

import java.util.List;

public interface StudentDao {

    int addStu(Student student);
    List<Student> verification(String name);
}
