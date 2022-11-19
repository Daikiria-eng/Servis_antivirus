package dao;

import dto.User;

public interface ServisAntivirusDAO{
    public String insertUser(User user);
    
    public String validateUser(User user);
}