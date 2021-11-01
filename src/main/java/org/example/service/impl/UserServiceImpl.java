package org.example.service.impl;


import lombok.AllArgsConstructor;
import org.example.dao.UserDAO;
import org.example.model.User;
import org.example.model.util.Role;
import org.example.service.UserService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserDAO userDAO;

    @Override
    public boolean addUser(User user) {
        Optional<User> userDB = userDAO.getUserByEmail(user.getEmail());

        if (userDB.isPresent()) {
            return false;
        }

        user.setRole(Role.USER);
        user.setEncryptedPassword(new BCryptPasswordEncoder().encode(user.getPassword()));

        userDAO.saveUser(user);
        return true;
    }

    @Override
    public User getUserById(Long id) {
        return userDAO.getUserById(id).orElse(null);
    }

    @Override
    public User getUserByEmail(String email) {
        return userDAO.getUserByEmail(email).orElse(null);
    }

    @Override
    public List<User> getAllUsers(String email) {
        return userDAO.getAllUsers(email);
    }

    @Override
    public void updateClass(Integer c, Integer nc, Integer uc, Long id) {
        userDAO.updateClass(c, nc, uc, id);
    }

}
