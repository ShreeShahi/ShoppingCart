package com.niit.ShoppingCartBackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.dao.ProductDAO;
import com.niit.ShoppingCartBackend.domain.Category;
import com.niit.ShoppingCartBackend.domain.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory sessionFactory;
		
		
		//write user defined constructor with one parameter i.e., sessionFactory
		
		public ProductDAOImpl(SessionFactory sessionFactory)
		{
			this.sessionFactory = sessionFactory;
		}

		
		public void save(Product product) {
			
			sessionFactory.getCurrentSession().saveOrUpdate(product);
			
		}
		public boolean update(Product product) {
			try
			{
			sessionFactory.getCurrentSession().update(product);
			}catch (Exception e) {
				//if any excpetion comes during execute of try block, catch will excute
				e.printStackTrace();
				return false;
			}
			return true;
		}

		/*
		public boolean validate(String id, String password) {
			// TODO Auto-generated method stub
			return false;
		}*/

		
		public Product get(String id) {
			return 	(Product)  sessionFactory.getCurrentSession().get(Product.class, id);
		}

		
		public void delete(String productId) {
			Product productToDelete = new Product();
			productToDelete.setProductId(productId);;
			sessionFactory.getCurrentSession().delete(productToDelete);
		}
		

		@SuppressWarnings("unchecked")
		
		public List<Product> list() {

			return  sessionFactory.getCurrentSession().createQuery("from Product").list();
	}


		public Object getAllProductsByCategoryID(String id) {
			// TODO Auto-generated method stub
			return null;
		}


		public Product getByProductId(String productId) {
			String hql = "from Product where productId ='" + productId + "'";
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> listProduct = (List<Product>) (query).list();

			if (listProduct != null && !listProduct.isEmpty()) {
				return listProduct.get(0);
			}
			return null;
		}
}
