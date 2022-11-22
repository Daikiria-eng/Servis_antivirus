package dao;

import dto.User;
import list.StatList;

public interface ServisAntivirusDAO{
    public String insertUser(User user);

    public String validateUser(User user);

    public StatList getStats();
}
