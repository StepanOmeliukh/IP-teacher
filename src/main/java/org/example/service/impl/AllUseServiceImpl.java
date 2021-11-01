package org.example.service.impl;

import lombok.*;
import org.example.dao.ContactDAO;
import org.example.dao.TestDAO;
import org.example.model.Contact;
import org.example.model.Test;
import org.example.service.AllUseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AllUseServiceImpl implements AllUseService {

    @Autowired
    private TestDAO testDAO;

    @Autowired
    private ContactDAO contactDAO;

    @Override
    public String getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            String currentUserName = authentication.getName();
            return currentUserName;
        }
        return "";
    }

    @Override
    public List<Test> getAllUsersTestsByVariety(String clas, Long id) {
        return testDAO.getTestsByVariety(clas, id);
    }

    @Override
    public void saveContact(Contact contact) {
        contactDAO.saveContact(contact);
    }
}
