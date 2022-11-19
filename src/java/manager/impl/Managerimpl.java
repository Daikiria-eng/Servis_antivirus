package manager.impl;

import dao.ServisAntivirusDAO;
import dao.impl.ServisAntivirusDAOimpl;
import dto.User;
import manager.Manager;

public class Managerimpl implements Manager{
    ServisAntivirusDAO servisDao=new ServisAntivirusDAOimpl();

    @Override
    public String insertUser(User user) {
        return servisDao.insertUser(user);
    }

    @Override
    public String validateUser(User user) {
        return servisDao.validateUser(user);
    }
}