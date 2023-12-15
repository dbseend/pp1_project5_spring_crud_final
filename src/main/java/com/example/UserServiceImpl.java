package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
    @Autowired
    UserDao userDAO;

    public UserVO getUser(UserVO vo) {
        return userDAO.getUser(vo);
    }
}