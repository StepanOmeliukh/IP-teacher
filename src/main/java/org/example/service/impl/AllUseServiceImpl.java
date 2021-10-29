package org.example.service.impl;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.example.dao.TestDAO;
import org.example.repo.ClassesRepo;
import org.example.service.AllUseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
@Getter
@Setter
@RequiredArgsConstructor
public class AllUseServiceImpl implements AllUseService {

    @Autowired
    private TestDAO testDAO;

    @Override
    public String getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            String currentUserName = authentication.getName();
            return currentUserName;
        }
        return "";
    }

    public void saveTest() {

    }

}
