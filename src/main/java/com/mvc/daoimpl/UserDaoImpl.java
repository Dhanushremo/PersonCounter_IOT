package com.mvc.daoimpl;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

import com.mvc.dao.UserDao;
import com.mvc.model.User;
@Component("userDaoImplDemo")
public class UserDaoImpl implements UserDao{
	private static Session session;
	static {
		session=new Configuration().
				configure().
				addAnnotatedClass(User.class).
				buildSessionFactory().
				openSession();
	}
	@Override
	public int insert(User u) {
		session.beginTransaction();
		session.persist(u);
		session.getTransaction().commit();
		return 1;
	}
	@Override
    public User insertEmail(String mail) {
        session.beginTransaction();
        String hql = "FROM User WHERE email = :email or phoneNumber =:phoneNumber";
        Query<User> q = session.createQuery(hql, User.class);
        q.setParameter("email", mail);
        q.setParameter("phoneNumber", mail);
        return q.uniqueResult();
    }



}
