package ru.javarush.dao;

/**
 * Created by Icebear on 04.03.2017.
 */
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.javarush.model.User;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    private SessionFactory sessionFactory;
    private static final int limitResultsPerPage = 10;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(user);
    }

    public void updateUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
    }

    public void removeUser(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        if (user != null)
            session.delete(user);
    }

    public User getUser(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        return user;
    }

    @SuppressWarnings("unchecked")
    public List<User> getUsers(Long page) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM User");
        query.setFirstResult((int)(page - 1) * limitResultsPerPage);
        query.setMaxResults(limitResultsPerPage);
        List<User> users = query.list();
        return users;
    }

    @SuppressWarnings("unchecked")
    public List<User> getUsers(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM User WHERE USER_NAME = :name");
        query.setParameter("name", name);
        List<User> users = query.list();
        return users;
    }


}
