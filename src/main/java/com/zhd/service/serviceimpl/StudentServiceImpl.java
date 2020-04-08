/*
package com.zhd.service.serviceimpl;


import com.zhd.dao.StudentMapper;
import com.zhd.model.Student;
import com.zhd.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {


    @Autowired
    StudentMapper studentMapper;
    @Autowired
    public RedisTemplate redisTemplate;
    @Override
    public List<Student> getAllStudent() {
        System.out.println("==========");
        List<Student> list =  list= studentMapper.selectAll();

        System.out.println("=========="+list);

        return list;
    }



    public List<Student> getAllStudent2() {

        List<Student> list =(List<Student>)redisTemplate.opsForValue().get("allstudent");
        if(null==list){

            System.out.println("-----------查数据库---------------");
            list= studentMapper.selectAll();
            redisTemplate.opsForValue().set("allstudent",list);
        }else {
            System.out.println("-----------查缓存---------------");
        }

        return list;
    }


    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert() {

        Student s0=new Student();
        s0.setName("詹海东0");
        s0.setEmail("340uo00");
        s0.setPassword("dljdld0");
        s0.setRemark("oweuwoq0");
        studentMapper.insert(s0);

        Student s=new Student();
        s.setName("詹海东1");
        s.setEmail("340uo");
        s.setPassword("dljdld");
        s.setRemark("oweuwoq");
        int a=10/0;
        studentMapper.insert(s);



    }
}
*/
