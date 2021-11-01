package org.example.dao.impl;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.example.dao.TestDAO;
import org.example.model.Test;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import java.util.ArrayList;
import java.util.List;

@Repository
@AllArgsConstructor
@NoArgsConstructor
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

    public List<Test> getTestsByVariety(String clas, Long id) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();

        Query query = session.createNativeQuery("select * from test t\n" +
                "where t.variety = :clas and t.user_id = :id", Test.class);
        query.setParameter("clas", clas);
        query.setParameter("id", id);

        List<Test> result = query.getResultList();
        transaction.commit();
        return result;
    }
}
