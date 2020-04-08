package com.zhd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
//import com.zhd.model.Student;
//import com.zhd.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class EasyUIController {



    @Autowired
  //  public StudentService studentService;

    @RequestMapping("/easyui")
    public String test() {
        System.out.println("========easyui==========");
        return "/easyui/xmain";
    }



    @RequestMapping("/student")
    public String  student(@RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum, @RequestParam(value = "pageSize",defaultValue = "3") Integer pageSize, Model model){

        System.out.println(pageNum);
        System.out.println(pageSize);
        PageHelper.startPage(pageNum,pageSize);

       /* List<Student> students=studentService.getAllStudent();
        System.out.println(students);
        PageInfo<Student> pageInfo = new PageInfo<Student>(students);
        List<Student> list= pageInfo.getList();
        model.addAttribute("list",list);
        model.addAttribute("pageNum",pageInfo.getPageNum());*/
        return "page";

    }



    @RequestMapping("/student2")
    @ResponseBody
    public Map<String,Object> student2(@RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum, @RequestParam(value = "pageSize",defaultValue = "3") Integer pageSize, Model model){

        System.out.println("===========student2==========");
        System.out.println(pageNum);
        System.out.println(pageSize);
        PageHelper.startPage(pageNum,pageSize);

       /* List<Student> students=studentService.getAllStudent();
        System.out.println(students);
        PageInfo<Student> pageInfo = new PageInfo<Student>(students);
        List<Student> list= pageInfo.getList();*/
        //  model.addAttribute("list",list);
        //  model.addAttribute("pageNum",pageInfo.getPageNum());

        Map<String,Object> map = new HashMap<>();
      //  map.put("total",pageInfo.getTotal());
      //  map.put("rows",list);

        return map;

    }


    @ResponseBody
    @RequestMapping("/addform")
    public Object  addform(HttpServletRequest request,@RequestParam(value = "file")MultipartFile file){
        System.out.println("----------------addform-----------------------");


        //获取传入的数据
        String language=request.getParameter("language");
        System.out.println("----------------addform-----------------------"+language);
        String datetime=request.getParameter("datetime");
        System.out.println("----------------addform-----------------------"+datetime);
        String date=request.getParameter("date");
        System.out.println("----------------addform-----------------------"+date);
        String date2=request.getParameter("date2");
        System.out.println("----------------addform-----------------------"+date2);
        String[] list = request.getParameterValues("checkbox");
        System.out.println("----------------addform-----------------------"+list);


        System.out.println("===========upload========");

        //1. 接受上传的文件  @RequestParam("file") MultipartFile file
        try {
            //2.根据时间戳创建新的文件名，这样即便是第二次上传相同名称的文件，也不会把第一次的文件覆盖了
            String fileName = System.currentTimeMillis() + file.getOriginalFilename();
            //3.通过req.getServletContext().getRealPath("") 获取当前项目的真实路径，然后拼接前面的文件名
            String destFileName = request.getServletContext().getRealPath("") + "uploaded" + File.separator + fileName;
            System.out.println("===========upload========"+destFileName);
            //4.第一次运行的时候，这个文件所在的目录往往是不存在的，这里需要创建一下目录（创建到了webapp下uploaded文件夹下）
            File destFile = new File(destFileName);
            destFile.getParentFile().mkdirs();
            //5.把浏览器上传的文件复制到希望的位置
            file.transferTo(destFile);
            //6.把文件名放在model里，以便后续显示用
//            m.addAttribute("fileName", fileName);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return "上传失败," + e.getMessage();
        } catch (IOException e) {
            e.printStackTrace();
            return "上传失败," + e.getMessage();
        }



        return "ok";

    }

/*
    @ResponseBody
    @RequestMapping("/showPicture")
    public Object  showPicture(String fileName,HttpServletRequest request){
        System.out.println("---------------------------------------"+fileName);
        String destFileName = request.getServletContext().getRealPath("") + "uploaded" + File.separator + fileName;
        System.out.println("---------------------------------------"+destFileName);
        return studentService.getAllStudent();


    }

    @RequestMapping("/student1")
    public Object  student1(){
        System.out.println("---------------------------------------");
        return studentService.getAllStudent();


    }

    @RequestMapping("/studentInsert")
    @ResponseBody
    public Object  studentInsert(){
        studentService.insert();
        return "ok";

    }*/
    @RequestMapping("/studentInsert2")
    @ResponseBody
    public Object  studentInsert2(){

        return "ok";

    }



    @RequestMapping("/you11")
    public String test1() {
        System.out.println("========test11==========");
        return "index1";
    }
    @RequestMapping("/hello222")
    public String test2() {
        System.out.println("========test11==========");
        return "hello";
    }

    @RequestMapping("/h133333")
    public String test3(String string) {

        System.out.println("h1======================string->"+string);

        return "index3";

    }




}
