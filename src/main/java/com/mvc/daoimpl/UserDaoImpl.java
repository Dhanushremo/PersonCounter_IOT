package com.mvc.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import com.mvc.dao.UserDao;
import com.mvc.model.User;

@Component("userDaoImplDemo")
public class UserDaoImpl implements UserDao {

    private static SessionFactory sessionFactory;

    // Initialize SessionFactory (only once)
    static {
        sessionFactory = new Configuration()
                .configure()
                .addAnnotatedClass(User.class)
                .buildSessionFactory();
    }

    @Override
    public int insert(User u) {
        Session session = sessionFactory.openSession(); // Open new session
        try {
            session.beginTransaction();
            session.persist(u);
            session.getTransaction().commit();
            return 1;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
            return 0;
        } finally {
            session.close(); // Always close session
        }
    }

    @Override
    public User insertEmail(String mail) {
        Session session = sessionFactory.openSession(); // Open new session
        try {
            session.beginTransaction();
            String hql = "FROM User WHERE email = :email OR phoneNumber = :phoneNumber";
            Query<User> q = session.createQuery(hql, User.class);
            q.setParameter("email", mail);
            q.setParameter("phoneNumber", mail);
            User result = q.uniqueResult();
            session.getTransaction().commit();
            return result;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close(); // Always close session
        }
    }
}
