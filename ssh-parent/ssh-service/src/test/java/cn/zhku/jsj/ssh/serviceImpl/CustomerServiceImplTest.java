package cn.zhku.jsj.ssh.serviceImpl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.zhku.jsj.ssh.entity.Customer;
import cn.zhku.jsj.ssh.service.CustomerService;

//"classpath*:applicationContext-*.xml"
//classpath* 表示：从jar包里面去找配置文件
//applicationContext-*.xml表示：配置文件为applicationContext-*.xml

//@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath*:applicationContext-*.xml"})
//@RunWith(SpringJUnit4ClassRunner.class)
public class CustomerServiceImplTest {

	@Autowired
	private CustomerService customerService;
	
	
	@Test
	public void test() {
		//测试失败
		/*ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("classpath:applicationContext-service.xml");
		CustomerService customerService=(CustomerService) applicationContext.getBean("customerService");
		Customer cus = customerService.findCustomerById(23L);
		System.out.println("当前客户："+cus);*/
		
		
		//测试成功
		/*Customer cus = customerService.findCustomerById(23L);
		System.out.println("当前客户："+cus);*/
	}

}
