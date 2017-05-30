package com.niit.ShoppingCartBackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.dao.RoleDAO;
import com.niit.ShoppingCartBackend.domain.Role;

@Repository("roleDAO")
@Transactional
public class RoleDAOImpl implements RoleDAO{

	@Autowired
	private SessionFactory sessionFactory;
		
		
		//write user defined constructor with one parameter i.e., sessionFactory
	
		public RoleDAOImpl(SessionFactory sessionFactory)
		{
			this.sessionFactory = sessionFactory;
		}

		public void save(Role role) {
			
			sessionFactory.getCurrentSession().saveOrUpdate(role);
			
			
		}
		public boolean update(Role role) {
			try
			{
			sessionFactory.getCurrentSession().update(role);
			}catch (Exception e) {
				//if any excpetion comes during execute of try block, catch will excute
				e.printStackTrace();
				return false;
			}
			return true;
		}
		public Role get(String id) {
			return 	(Role)  sessionFactory.getCurrentSession().get(Role.class, id);
		}

		
		public Role delete(String id) {
			return 	(Role)  sessionFactory.getCurrentSession().get(Role.class, null); 
		}
		

		@SuppressWarnings("unchecked")
		
		/*public List<Role> list() {

			return  sessionFactory.getCurrentSession().createQuery("from Role").list();
	}
*/
		public List<Role> list() {
			@SuppressWarnings ({"unchecked"})
			List <Role> listRole = (List<Role>) sessionFactory.getCurrentSession().createCriteria(Role.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return listRole;
		}
		public boolean validate(String id, String password) {
			// TODO Auto-generated method stub
			return false;
		}
		public Role getByName(String username) {
			String hql = "from Role where username ='" + username + "'";	
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
					@SuppressWarnings("unchecked")
					List<Role> listRole = (List<Role>) (query).list();
					
					if(listRole != null && !listRole.isEmpty()){
						return listRole.get(0);
					}
			return null;
			
			
		}

		public Role getByContact(String contact) {
			String hql = "from Role where contact ='" + contact + "'";
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Role> listRole = (List<Role>) (query).list();

			if (listRole != null && !listRole.isEmpty()) {
				return listRole.get(0);
			}
			return null;
		}

		
	/*	public void delete(String username) {

			Role roleToDelete = new Role();
			roleToDelete.setId(username);
			sessionFactory.getCurrentSession().delete(roleToDelete);
			
		}*/

		
		public void saveOrUpdate(Role role) {
			sessionFactory.getCurrentSession().saveOrUpdate(role);
			
		}


		public Role getByEmail(String email) {
			String hql = "from Role where email ='" + email + "'";
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Role> listRole = (List<Role>) (query).list();

			if (listRole != null && !listRole.isEmpty()) {
				return listRole.get(0);
			}
			return null;
		}

	
}
