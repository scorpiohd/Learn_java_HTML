package com.zhd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class AjaxTest {


    @RequestMapping("/add")
    @ResponseBody
    public String ajax01(HttpServletRequest request, HttpServletResponse response) throws Exception {

        //首先设置可以处理中文
        System.out.println("===========AjaxTest add========");

                 response.setCharacterEncoding("utf-8");
                 response.setContentType("text/html; charset=utf-8");
                 //获取传入的数据
                 String username=request.getParameter("username");
                 String password=request.getParameter("password");
                 String password1=request.getParameter("password1");
                 String realname=request.getParameter("realname");

                System.out.println("a:"+username+password);

              //  response.getWriter().append("{\"success\":true}");//返回键值对，做相关判断，输出相关信息

        return "{\"success\":true}";
    }


    //判断传入的参数有没有空的方法，只要有空的就返回false
    @RequestMapping("/checkUsername")
    @ResponseBody
     public String checkParam(String... args){//这样传参数代表参数个数不确定，传几个都可以
        System.out.println("===========AjaxTest checkUsername0========"+args);
                 for(String s : args){
                     System.out.println("===========AjaxTest checkUsername========"+args);
                     if("".equals(s)||s==null){
                                return "{\"success\":false}";
                            }
                     }
                 return "{\"success\":true}";
             }



}
