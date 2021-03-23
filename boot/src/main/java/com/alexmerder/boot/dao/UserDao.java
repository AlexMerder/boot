package com.alexmerder.boot.dao;


import com.alexmerder.boot.model.User;
import java.util.List;

public interface UserDao {
    List<User> index();

    void save(User person);

    void update(User updatedPerson);

    void delete(Long id);

    User loadUserByUserName(String name);
    User loadUserById(Long id);
}
