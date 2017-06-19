package com.niit.ShoppingCartBackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.dao.CategoryDAO;
import com.niit.ShoppingCartBackend.domain.Category;

@Repository("categoryDAO")
@Transactional

public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean save(Category category) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(category);
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@SuppressWarnings("unchecked")

	public List<Category> list() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	public Category get(String id) {
		String hql = "from Category where id ='" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) (query).list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return (Category) sessionFactory.getCurrentSession().get(Category.class, id);
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		Category categoryToDelete = new Category();
		categoryToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	}

	public boolean saveOrUpdate(Category category) {
		// TODO Auto-generated method stub
		return false;
	}
}
