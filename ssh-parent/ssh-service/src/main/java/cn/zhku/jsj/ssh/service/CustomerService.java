package cn.zhku.jsj.ssh.service;

import cn.zhku.jsj.ssh.entity.Customer;

public interface CustomerService {

	
	/**
	 * 通过id查询用户
	 * @param CustomerId
	 * @return
	 */
	public Customer findCustomerById(Long CustomerId);
}
