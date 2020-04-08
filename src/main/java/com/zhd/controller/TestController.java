package com.zhd.controller;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
public class TestController {

    @RequestMapping("/")
    public String test() {
        System.out.println("========test1==========");
      //  int i=1/0;
        System.out.println("=========devtool success!!! 88888 1111============");
        System.out.println("========test2==========");

        return "index";
    }

    @RequestMapping("/you")
    public String test1() {
        System.out.println("========test11==========");
        return "index1";
    }
    @RequestMapping("/hello")
    public String test2() {
        System.out.println("========test11==========");
        return "hello";
    }

    @RequestMapping("/h1")
    public String test3(String string) {

        System.out.println("h1======================string->"+string);

        return "index3";

    }


    @ApiOperation(value="value-->添加swagger信息", notes = "notes-->添加swagger信息")
    @ApiImplicitParam(name="str", value="str", required = true, dataType = "Sting")
   // @GetMapping("/swagger")
    @ResponseBody
    @RequestMapping(value="/swagger")
    public Object swagger(String str) {
        System.out.println("swagger======================string->"+str);
        return "success-swagger";

    }


}
