package com.zhd;

import com.zhd.dao.TransOrderMapper;
import com.zhd.model.TransOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HtmlApplicationTests {

    @Autowired
    TransOrderMapper transOrderMapper;


   /* @Test
    public void contextLoads() {

        TransOrder transOrder=new TransOrder();
        transOrder.setAmt(Long.valueOf("1"));
        transOrder.setName("name");
        transOrder.setOrderId(System.currentTimeMillis()+"");
        transOrder.setTransId(System.currentTimeMillis()+"");
        transOrder.setCreateTime(new Date());
        transOrder.setEndTime(new Date());
        transOrder.setPayTime(new Date());
        transOrder.setStatus("1");

        int i=transOrderMapper.insert(transOrder);

        System.out.println("----------"+i);
    }
*/

    @Test
    public void contextLoads2() {

        for (int i = 0; i < 100; i++) {
            String str=System.currentTimeMillis()+"";
            TransOrder transOrder=new TransOrder();
           // transOrder.setId(Integer.valueOf(str.substring(4,13)));
            transOrder.setAmt(Long.valueOf("1"));
            transOrder.setName("name");
            transOrder.setOrderId(str);
            transOrder.setTransId(str+"1");
            transOrder.setCreateTime(new Date());
            transOrder.setEndTime(new Date());
            transOrder.setPayTime(new Date());
            transOrder.setDateTime(new Date());
            transOrder.setStatus("1");

            int i1=transOrderMapper.insert(transOrder);
            System.out.println("----------"+i1);
        }


    }
}
