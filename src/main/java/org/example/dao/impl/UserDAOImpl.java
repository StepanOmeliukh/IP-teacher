package org.example.dao.impl;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.example.dao.UserDAO;
import org.example.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
@NoArgsConstructor
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        session.save(user);

        transaction.commit();
    }

    public Long getUserIdByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        Query query = session.createNativeQuery("select u.id from users u\n" +
                "where u.email = :email");
        query.setParameter("email", email);
        Long result = (Long) query.getSingleResult();
        transaction.commit();

        return result;
    }

    @Override
    public Optional<User> getUserById(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            User user = session.get(User.class, id);
            return Optional.of(user);
        } catch (NullPointerException npe) {
            return Optional.empty();
        } finally {
            transaction.commit();
        }
    }

    @Override
    public Optional<User> getUserByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            Query query = session.createQuery("FROM User O WHERE O.email = :email", User.class);
            query.setParameter("email", email);
            User user = (User) query.uniqueResult();
            return Optional.of(user);
        } catch (NullPointerException npe) {
            return Optional.empty();
        } finally {
            transaction.commit();
        }
    }

    @Override
    public Integer getCountClasses(String email) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();



        Query query1 = session.createNativeQuery("select count_of_classes_control from users\n" +
                "where email = :email");
        query1.setParameter("email", email);
        Integer result = (Integer) query1.getSingleResult();
        transaction.commit();

        return result;
    }

    @Override
    public void subtractCount(String email) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        Query<Integer> query = session.createQuery(
                "update User u\n" +
                   "set u.CountClassesControl = (u.CountClassesControl - 1)\n" +
                   "where u.email = :email"
        );
        query.setParameter("email", email);

        query.executeUpdate();
        transaction.commit();
    }

}
