package cn.zhku.jsj.ssh.daoImpl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.zhku.jsj.ssh.dao.CustomerDao;
import cn.zhku.jsj.ssh.entity.Customer;

public class CustomerImplTest {

	@Test
	public void test() {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		CustomerDao customerDao=(CustomerDao) applicationContext.getBean("customerDao");
		Customer cus = customerDao.findCustomerById(23L);
		System.out.println("当前客户："+cus);
	}

}
