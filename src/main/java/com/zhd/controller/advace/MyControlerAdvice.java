package com.zhd.controller.advace;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class MyControlerAdvice {


    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public Map errorHandler(Exception exeption) {
        Map map = new HashMap();
        map.put("code",100);
        map.put("msg", exeption.getMessage());
        System.out.println(exeption.getStackTrace());
        return map;
    }

}
