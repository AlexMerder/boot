package com.alexmerder.boot.dao;

import com.alexmerder.boot.model.Role;
import java.util.List;

public interface RoleDao {
    List<Role> getRoles();
    Role getRoleByID(Long id);
}
