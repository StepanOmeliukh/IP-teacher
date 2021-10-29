package org.example.dao.impl;

import org.example.dao.TestDAO;
import org.example.model.Test;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDAOImpl  implements TestDAO {
    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void saveTest(Test test) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        session.save(test);

        transaction.commit();
    }
}
