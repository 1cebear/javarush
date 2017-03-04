package ru.javarush.dao;

/**
 * Created by Icebear on 04.03.2017.
 */
import ru.javarush.model.User;

import java.util.Date;
import java.util.List;

public interface UserDao {
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUser(int id);
    List<User> getUsers(Long page);
    List<User> getUsers(String name);

}
