package com.niit.ShoppingCartBackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.dao.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.domain.Shippingaddress;

@Repository("shippingaddressDAO")
@Transactional
public class ShippingaddressDAOImpl implements ShippingaddressDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public ShippingaddressDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
}
	@Transactional
	public List<Shippingaddress> list() {
		@SuppressWarnings({ "unchecked" })
		List<Shippingaddress> listShippingaddress = (List<Shippingaddress>) sessionFactory.getCurrentSession().createCriteria(Shippingaddress.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listShippingaddress;
	}
	@Transactional
	public Shippingaddress getByShippingAddress(String shippingaddress) {
		String hql = "from Shippingaddress where ShippingAddress ='" + shippingaddress + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> listShippingaddress = (List<Shippingaddress>) (query).list();

		if (listShippingaddress != null && !listShippingaddress.isEmpty()) {
			return listShippingaddress.get(0);
		}
		return null;
	}
	@Transactional
	public Shippingaddress getByShippingId(String shippingId) {
		String hql = "from Shippingaddress where shippingId='" + shippingId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> listShippingaddress = (List<Shippingaddress>) (query).list();

		if (listShippingaddress != null && !listShippingaddress.isEmpty()) {
			return listShippingaddress.get(0);
		}
		return null;
	}
	@Transactional
	public Shippingaddress getByUserName(String username) {
		String hql = "from Shippingaddress where UserName='" + username + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> listShippingaddress = (List<Shippingaddress>) (query).list();

		if (listShippingaddress != null && !listShippingaddress.isEmpty()) {
			return listShippingaddress.get(0);
		}
		return null;
	}
	@Transactional
	public Shippingaddress getByUserId(String usersId) {
		String hql = "from Shippingaddress where usersId='" + usersId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> listShippingaddress = (List<Shippingaddress>) (query).list();

		if (listShippingaddress != null && !listShippingaddress.isEmpty()) {
			return listShippingaddress.get(0);
		}
		return null;
	}
	
	@Transactional
	public void saveOrUpdate(Shippingaddress shippingaddress) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(shippingaddress);

	}

	@Transactional
	public void delete(String shippingId) {
		Shippingaddress shippingaddressToDelete = new Shippingaddress();
		shippingaddressToDelete.setShippingId(shippingId);
		sessionFactory.getCurrentSession().delete(shippingaddressToDelete);
		
	}
	@Transactional
	public void editShippingAddress(Shippingaddress shippingaddress) {
		// TODO Auto-generated method stub
		
	}
	
	@Transactional
	public List<Shippingaddress> list(String email) {
		String hql = "from Shippingaddress where email ='" + email +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Shippingaddress> list = (List<Shippingaddress>) query.list();
		
		return list;
	}
	
}
