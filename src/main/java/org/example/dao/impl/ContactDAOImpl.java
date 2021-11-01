package org.example.dao.impl;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.example.dao.ContactDAO;
import org.example.model.Contact;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@AllArgsConstructor
@NoArgsConstructor
public class ContactDAOImpl implements ContactDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveContact(Contact contact) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.save(contact);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void updateContact(Contact contact) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.update(contact);
        session.getTransaction().commit();
        session.close();
    }
}
