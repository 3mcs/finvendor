/**
 * 
 */
package com.finvendor.daoimpl;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.finvendor.dao.LoginDAO;
import com.finvendor.model.Users;

/**
 * @author rayulu vemula
 *
 */
public class LoginDAOImpl implements LoginDAO{

	private static Logger logger = Logger.getLogger(LoginDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	/** --------------------------------------------------------------------- */
	/**
	 * (non-Javadoc)
	 * 
	 * @see com.finvendor.dao.LoginDAOImpl#getUserInfoByEmail(com.finvendor.model.Users)
	 */
	@Transactional
	public Users getUserInfoByEmail(String email) {
		Criteria criteria=null;
		try{
			criteria=this.sessionFactory.getCurrentSession().createCriteria(Users.class);
			criteria.add(Restrictions.eq("email", email));
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return (Users)criteria.uniqueResult();
	}

	 

}
