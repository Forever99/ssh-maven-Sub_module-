package cn.zhku.jsj.ssh.dao;

import cn.zhku.jsj.ssh.entity.Customer;

public interface CustomerDao {

	/**
	 * 通过id查询用户
	 * @param CustomerId
	 * @return
	 */
	public Customer findCustomerById(Long CustomerId);
}
