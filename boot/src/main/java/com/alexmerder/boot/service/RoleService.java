package com.alexmerder.boot.service;

import com.alexmerder.boot.model.Role;

import java.util.List;

public interface RoleService {
    List<Role> getRoles();
    Role getRoleByID(Long id);
}
