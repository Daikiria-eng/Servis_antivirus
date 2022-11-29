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

    /**
     * Este método es el de registro de usuario
     * @param user el usuario a insertar
     * @return retorna el estado de la validacion
     */
    @Override
    public String insertUser(User user) {
        return servisDao.insertUser(user);
    }

    /**
     * Este método valida el usuario para el inicio de sesión
     * @param user recibe el usuario a validar
     * @return diferentes datos del usuario
     */
    @Override
    public String validateUser(User user) {
        return servisDao.validateUser(user);
    }

    /**
     * 
     *@return Retorna todas las estadísticas dentro de la base de datso
     */
    @Override
    public StatList getStats() {
        return servisDao.getStats();
    }
}
