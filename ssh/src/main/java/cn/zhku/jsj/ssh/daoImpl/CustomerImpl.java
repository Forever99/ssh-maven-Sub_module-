package cn.zhku.jsj.ssh.daoImpl;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.zhku.jsj.ssh.dao.CustomerDao;
import cn.zhku.jsj.ssh.entity.Customer;

public class CustomerImpl extends HibernateDaoSupport implements CustomerDao {

	@Override
	public Customer findCustomerById(Long CustomerId) {
		return this.getHibernateTemplate().get(Customer.class, CustomerId);
	}

}
