package dao;

import dto.User;

/**
 *
 *Esta es la clase de implementación de acceso al objeto de usuario
 *
 *@author enikyasta
 */
public interface UserDAO{
    public String[] getAll();

    /**
     * Este método es el de registro de usuario
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     *  e 
     * @param user el usuario a insertar
     * @return retorna el estado de la validacion
     */
    public String insertUser(User user);
    
    /**
     * Este método hace la validación de usuario para el inicio de sesión
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @param user el usuario a insertar
     * @return retorna el estado de la validacion
     */
    public String validateUser(User user);
    
    /**
     * Este método elimina los usuarios
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @param user el usuario a insertar
     * @return retorna el estado de la eliminación
     */
    public String deleteUser(User user);
    
    /**
     * Este método elimina los usuarios
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @param user el usuario a insertar
     * @return retorna el estado de la eliminación
     */
    public String updateUser(User user);
}