package cn.zhku.jsj.ssh.serviceImpl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.zhku.jsj.ssh.dao.CustomerDao;
import cn.zhku.jsj.ssh.entity.Customer;
import cn.zhku.jsj.ssh.service.CustomerService;

public class CustomerServiceImplTest {

	@Test
	public void test() {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		CustomerService customerService=(CustomerService) applicationContext.getBean("customerService");
		Customer cus = customerService.findCustomerById(23L);
		System.out.println("当前客户："+cus);
	}

}
