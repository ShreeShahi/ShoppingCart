package com.niit.ShoppingCartBackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.dao.UserDAO;
import com.niit.ShoppingCartBackend.domain.User;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void save(User user) {
		
			sessionFactory.getCurrentSession().saveOrUpdate(user);
			
		
	}

	
	/*public boolean update(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return false;
		}
		return true;
	}*/

	/**
	 * validate method will return true if the credetails are correct else will
	 * return false
	 */
	public boolean validate(String user_name, String user_password) {
		String hql = "from User where user_name= '" + user_name + "' and " + " user_password ='" + user_password+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	public List<User> list() {

		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	public User get(String id) {

		// get method get the date from user table based on primary key i.e., id
		// and set it to User class
		// like select * from user where id = ?
		return (User) sessionFactory.getCurrentSession().get(User.class, id);

	}

	public User getById(String id) {
		String hql = "from User where email ='"+ id +"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) query.list();
		
		if (listUser != null && !listUser.isEmpty()){
			return listUser.get(0);
		}
		return null;
		
	}

	public User getByEmailId(String name) {
		String hql = "from User where email ='"+ name +"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) query.list();
		
		if (listUser != null && !listUser.isEmpty()){
			return listUser.get(0);
		}
		return null;
	}

	public boolean update(User user) {
		// TODO Auto-generated method stub
		return false;
	}
}
