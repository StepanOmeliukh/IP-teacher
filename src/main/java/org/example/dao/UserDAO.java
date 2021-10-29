package org.example.dao;

import org.example.model.User;

import java.util.List;
import java.util.Optional;

public interface UserDAO {

    void saveUser(User user);

    Long getUserIdByEmail(String email);

    Optional<User> getUserById(Long id);

    Optional<User> getUserByEmail(String email);

    Integer getCountClasses(String email);

    void subtractCount(String email);
}

