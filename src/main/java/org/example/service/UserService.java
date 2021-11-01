package org.example.service;


import org.example.model.User;

import java.util.List;

public interface UserService {

    boolean addUser(User user);

    User getUserById(Long id);

    User getUserByEmail(String email);

    List<User> getAllUsers(String email);

    void updateClass(Integer c, Integer nc, Integer uc, Long id); //Довго писати скорочення classes..
}
