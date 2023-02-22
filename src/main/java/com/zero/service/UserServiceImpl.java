package com.zero.service;

import com.zero.dao.User.UserMapper;
import com.zero.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("UserServiceImpl")
public class UserServiceImpl implements UserService{
    @Autowired
    UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public List<User> Login(Map map) {
        return userMapper.Login(map);
    }

    @Override
    public boolean UpdataPassword(Map map) {
        return userMapper.UpdataPassword(map);
    }

}
