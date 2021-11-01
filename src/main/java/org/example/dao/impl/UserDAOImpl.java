package org.example.dao.impl;

import lombok.NoArgsConstructor;
import org.example.dao.UserDAO;
import org.example.model.Test;
import org.example.model.User;
import org.example.model.util.VarietyTests;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import javax.persistence.Query;
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
    public Integer getCountClasses(String email, String clas) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        Integer result = 0;

        if (clas.equals(VarietyTests.CLASSES.name())) {
            Query query1 = session.createNativeQuery("select count_of_classes_control from users\n" +
                    "where email = :email");
            query1.setParameter("email", email);
            result = (Integer) query1.getSingleResult();
        } else if (clas.equals(VarietyTests.NOCLASSES.name())) {
            Query query1 = session.createNativeQuery("select count_of_no_classes_control from users\n" +
                    "where email = :email");
            query1.setParameter("email", email);
            result = (Integer) query1.getSingleResult();
        } else if (clas.equals(VarietyTests.UNDERCLASSES.name())) {
            Query query1 = session.createNativeQuery("select count_of_under_classes_control from users\n" +
                    "where email = :email");
            query1.setParameter("email", email);
            result = (Integer) query1.getSingleResult();
        }

        if (result == null)
            result = 0;
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

    @Override
    public List<User> getAllUsers(String email) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        Query query = session.createNativeQuery("select * from users u\n" +
                "where u.email != :email", User.class);
        query.setParameter("email", email);

        List<User> result = query.getResultList();
        transaction.commit();
        return result;
    }

    @Override
    public void updateClass(Integer c, Integer nc, Integer uc, Long id) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        Query query = session.createNativeQuery("update users u\n" +
                "set u.count_of_classes_control = :c,\n" +
                "    u.count_of_no_classes_control = :nc,\n" +
                "    u.count_of_under_classes_control = :uc\n" +
                "where id = :id");
        query.setParameter("c", c);
        query.setParameter("nc", nc);
        query.setParameter("uc", uc);
        query.setParameter("id", id);

        query.executeUpdate();
        transaction.commit();
    }
}
