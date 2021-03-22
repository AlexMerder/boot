package com.alexmerder.boot.service;

import org.springframework.stereotype.Service;
import com.alexmerder.boot.dao.RoleDao;
import com.alexmerder.boot.model.Role;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService{

    private final RoleDao roleDao;

    public RoleServiceImpl(RoleDao roleDao) {
        this.roleDao = roleDao;
    }

    @Override
    public List<Role> getRoles() {
        return roleDao.getRoles();
    }

    @Override
    public Role getRoleByID(Long id) {
        return roleDao.getRoleByID(id);
    }
}
