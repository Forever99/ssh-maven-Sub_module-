package cn.zhku.jsj.ssh.serviceImpl;

import cn.zhku.jsj.ssh.dao.CustomerDao;
import cn.zhku.jsj.ssh.entity.Customer;
import cn.zhku.jsj.ssh.service.CustomerService;

public class CustomerServiceImpl implements CustomerService {

	private CustomerDao customerDao;
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}
	public CustomerDao getCustomerDao() {
		return customerDao;
	}


	@Override
	public Customer findCustomerById(Long CustomerId) {
		return customerDao.findCustomerById(CustomerId);
	}

}
