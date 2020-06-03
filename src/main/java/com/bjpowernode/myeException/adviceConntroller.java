package com.bjpowernode.myeException;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;



@ControllerAdvice
public class adviceConntroller {

    @ExceptionHandler(Exception.class)
    public String anyException (Model model){
        return "/dealException";
    }
}
