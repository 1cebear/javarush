package ru.javarush.service;

/**
 * Created by Icebear on 04.03.2017.
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.javarush.dao.UserDao;
import ru.javarush.model.User;

import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Transactional
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Transactional
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Transactional
    public void removeUser(int id) {
        userDao.removeUser(id);
    }

    @Transactional
    public User getUser(int id) {
        return userDao.getUser(id);
    }

    @Transactional
    public List<User> getUsers(Long page) {
        return userDao.getUsers(page);
    }

    @Transactional
    public List<User> getUsers(String name) {
        return userDao.getUsers(name);
    }

}
