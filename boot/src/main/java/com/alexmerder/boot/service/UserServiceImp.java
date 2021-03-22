package com.alexmerder.boot.service;


import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.alexmerder.boot.dao.RoleDao;
import com.alexmerder.boot.dao.UserDao;
import com.alexmerder.boot.model.Role;
import com.alexmerder.boot.model.User;

import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Service
public class UserServiceImp implements UserService {

    private final UserDao userDao;
    private final RoleDao roleDao;
    private final PasswordEncoder passwordEncoder;

    public UserServiceImp(UserDao userDao, RoleDao roleDao, PasswordEncoder passwordEncoder) {
        this.userDao = userDao;
        this.roleDao = roleDao;
        this.passwordEncoder = passwordEncoder;
    }

    @Transactional(readOnly = true)
    @Override
    public List<User> index() {
        return userDao.index();
    }

    @Transactional
    @Override
    public void save(User person, Long[] rolesID) {
        Set<Role> roles = new HashSet<>();
        for (Long id : rolesID) {
            roles.add(roleDao.getRoleByID(id));
        }
        person.setRoles(roles);
        person.setPassword(passwordEncoder.encode(person.getPassword()));
        userDao.save(person);
    }

    @Transactional
    @Override
    public void update(User updatedPerson, Long[] rolesID) {

        Set<Role> roles = new HashSet<>();
        User willBeUpdated = userDao.loadUserById(updatedPerson.getId());
        if (rolesID != null) {
            for (Long id : rolesID) {
                roles.add(roleDao.getRoleByID(id));
            }
        } else {
            roles = willBeUpdated.getRoles();
        }
        updatedPerson.setPassword(willBeUpdated.getPassword());
        updatedPerson.setRoles(roles);
        userDao.update(updatedPerson);
    }

    @Transactional
    @Override
    public void delete(Long id) {
        userDao.delete(id);
    }
    @Transactional
    @Override
    public User getUserByFirstName(String name) {
        return userDao.loadUserByUserName(name);
    }
    @Transactional
    @Override
    public User getUserById(Long id) {
        return userDao.loadUserById(id);
    }
}
