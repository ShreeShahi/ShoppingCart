package com.niit.ShoppingCartBackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.dao.CartDAO;
import com.niit.ShoppingCartBackend.domain.Cart;

@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CartDAOImpl() {

	}

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Cart> list(String userId) {

		String hql = "from Cart where userId=" + "'" + userId + "'  and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return query.list();

	}

	@Transactional
	public void save(Cart cart) {

		sessionFactory.getCurrentSession().saveOrUpdate(cart);

	}

	@Transactional
	public Cart getCart(String userId, String productName) {
		String hql = "from Cart where userId = ? and productName = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, userId);
		query.setString(1, productName);
		return (Cart) query.uniqueResult();

	}

	@Transactional
	public Integer getQuantity(String userId, String productName) {
		String hql = "select quntity from  Cart where userId = ?  &&  productName =?";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, userId);
		query.setString(1, productName);

		return (Integer) query.uniqueResult();
	}

	
	@Transactional
	public void update(Cart cart) {

		sessionFactory.getCurrentSession().update(cart);

	}

	/*
	 * public boolean validate(String id, String password) { Query query=
	 * sessionFactory.getCurrentSession().
	 * createQuery(" from User where id = ? and password = ?");
	 * query.setString(0, id); //actually the index will start from zero - will
	 * get once exception. query.setString(1, password); //in the User table
	 * with this id and password there will one or zero records will exist
	 * //i.e., uniqueResult //uniqueResult method will return object if a row
	 * exist, else it will return null if( query.uniqueResult() == null) {
	 * //means no row exist i.e., invalid credentials return false; } else {
	 * //means row exist i.e., valid credentials return true; }
	 * 
	 * }
	 */

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Cart> list() {
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	@Transactional
	public Cart get(String id) {

		return (Cart) sessionFactory.getCurrentSession().get(Cart.class, id);
	}

	/*
	 * public boolean delete(Cart cart) { //Cart.setStatus('X');
	 * 
	 * return update(cart); }
	 */
	@Transactional
	public List<Cart> list(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public Cart get(int cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * public void saveOrUpdate(Cart cart) {
	 * 
	 * sessionFactory.getCurrentSession().saveOrUpdate(cart);
	 * 
	 * }
	 */

	@Transactional
	public void delete(int cartId) {

		Cart cartToDelete = new Cart();
		cartToDelete.setCartId(cartId);
		sessionFactory.getCurrentSession().delete(cartToDelete);
	}

	@Transactional
	public Long getTotalAmount(String email) {
		String hql = "select sum(total) from Cart where email = " + "'" + email + "'" + "and status = '" + "N" + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long sum = (Long) query.uniqueResult();
		return sum;
	}

	@Transactional
	public Cart getByCartId(int cartId) {

		String hql = "from Cart where cartId ='" + cartId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) (query).list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	public Cart getByProductId(int productId) {
		String hql = "from Cart where productId ='" + productId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) (query).list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	@Transactional
	public List<Cart> getByEmailId(String email) {
		String hql = "from Cart where email ='" + email + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();

		return list;
	}

	@Transactional
	public Cart getByProductName(String productname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public boolean itemAlreadyExist(String email, String productId, boolean b) {
		String hql = "from Cart where email= '" + email + "' and " + " productId ='" + productId + "'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	@Transactional
	public Cart getByUserandProduct(String email, String productId) {
		String hql = "from Cart where email= '" + email + "' and " + " productId ='" + productId + "'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) query.list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Cart> listCartByStatus(String email, char status) {
		
		return sessionFactory.getCurrentSession().createQuery("from Cart where email="+"'" +email +"'"+" and status="+"'"+status+"'"+"").list();
		
	}

}
