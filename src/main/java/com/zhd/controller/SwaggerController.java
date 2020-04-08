package com.zhd.controller;

import io.swagger.annotations.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//http://localhost:8081/html-test/swagger-ui.html
 @RestController
 @RequestMapping("/Swagger")
 @Api("Swagger相关api")
public class SwaggerController {


    @ApiOperation(value="value-->添加swagger信息")
    @ApiImplicitParams({
              //       @ApiImplicitParam(paramType="header",name="username",dataType="String",required=true,value="用户的姓名",defaultValue="zhaojigang"),
                     @ApiImplicitParam(paramType="query",name="str",dataType="String",required=true,value="用户的密码",defaultValue="wangna")
                 })
     @ApiResponses({
                      @ApiResponse(code=400,message="请求参数没填好"),
                      @ApiResponse(code=404,message="请求路径没有或页面跳转路径不对")
                  })

    @RequestMapping(value="/test")
    public Object swagger(String str) {
        System.out.println("swagger======================string->"+str);
        return "success-swagger";

    }


}
