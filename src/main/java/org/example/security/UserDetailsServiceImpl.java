package org.example.security;

import lombok.AllArgsConstructor;
import org.example.dao.UserDAO;
import org.example.model.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service("userDetailsServiceImpl")
@AllArgsConstructor
@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserDAO userDAO;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Optional<User> user = userDAO.getUserByEmail(email);
        if (user.isEmpty())
            throw new UsernameNotFoundException("User not found");
        return SecurityUser.fromUser(user.get());
    }
}
