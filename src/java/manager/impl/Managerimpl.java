package manager.impl;

import dao.ServisAntivirusDAO;
import dao.impl.ServisAntivirusDAOimpl;
import dto.User;
import list.StatList;
import manager.Manager;

/**
 *
 *Este es el manager, desde done se accede a los métodos
 *
 *@author enikyasta
 */
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

    @Override
    public StatList getStats() {
        return servisDao.getStats();
    }
}
