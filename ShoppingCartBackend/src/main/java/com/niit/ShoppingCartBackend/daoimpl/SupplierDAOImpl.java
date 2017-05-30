package com.niit.ShoppingCartBackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.dao.SupplierDAO;
import com.niit.ShoppingCartBackend.domain.Product;
import com.niit.ShoppingCartBackend.domain.Supplier;

@Repository("SupplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO {

	
	@Autowired
	private SessionFactory sessionFactory;

	// write user defined constructor with one parameter i.e., sessionFactory

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public boolean save(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().save(supplier);
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return false;
		}
		return true;
}
	
	@SuppressWarnings("unchecked")
	public List<Supplier> list() {

		return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
	}

	public Supplier get(String id) {

		return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, id);

	}

	public boolean validate(String id, String password) {

		Query query = sessionFactory.getCurrentSession().createQuery(" from Supplier where id = ? and password = ?");
		query.setString(1, id); // actually the index will start from zero -
								// will get once exception.
		query.setString(2, password);
		// in the User table with this id and password there will one or zero
		// records will exist
		// i.e., uniqueResult
		// uniqueResult method will return object if a row exist, else it will
		// return null
		if (query.uniqueResult() == null) {
			// means no row exist i.e., invalid credentials
			return false;
		} else {
			// means row exist i.e., valid credentials
			return true;
		}

}

	public void delete(String id) {
		Supplier supplierToDelete = new Supplier();
		supplierToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(supplierToDelete);
	}
	public void update(Supplier supplier) {
		sessionFactory.getCurrentSession().update(supplier);
		
	}
}
