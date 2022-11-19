package dao;

import dto.User;

public interface UserDAO{
    public String[] getAll();

    public String insertUser(User user);
    
    public String validateUser(User user);
}
