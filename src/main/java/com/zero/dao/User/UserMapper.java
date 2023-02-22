package com.zero.dao.User;
import com.zero.pojo.User;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    List<User> Login(Map map);

    boolean UpdataPassword(Map map);

}
