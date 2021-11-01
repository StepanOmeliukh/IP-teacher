package org.example.dao;

import org.example.model.Contact;

public interface ContactDAO {

    void saveContact(Contact contact);

    void updateContact(Contact contact);
}
