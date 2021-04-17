package com.csw.service;

import com.csw.entity.User;

import java.util.Map;

public interface UserService {
    Map update(User user);

    Map delete(String[] id);


    Map showAllUsers(Integer page, Integer rows);
}
