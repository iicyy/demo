package com.zero.service;

import com.zero.pojo.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    List<User> Login(Map map);

    boolean UpdataPassword(Map map);
}
