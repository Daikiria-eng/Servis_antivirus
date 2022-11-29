package manager;

import dto.User;
import list.StatList;

/**
 *
 *Este es el manager, desde done se accede a los métodos
 *
 *@author enikyasta
 */
public interface Manager{
    /**
     * Este método es el de registro de usuario
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
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
     * Este método trae todas las estadísticas de los módulos
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @return retorna el estado de la validacion
     */
    public StatList getStats();
}
