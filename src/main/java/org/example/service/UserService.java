package org.example.service;


import org.example.model.User;

import java.util.List;

public interface UserService {

    boolean addUser(User user);

    User getUserById(Long id);

    User getUserByEmail(String email);

//    List<User> getAllUsers();

//    void deleteUser(Long id);
}
