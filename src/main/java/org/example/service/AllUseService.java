package org.example.service;


import org.example.model.Contact;
import org.example.model.Test;

import java.util.List;

public interface AllUseService {

    String getCurrentUser();

    List<Test> getAllUsersTestsByVariety(String clas, Long id);

    void saveContact(Contact contact);
}
