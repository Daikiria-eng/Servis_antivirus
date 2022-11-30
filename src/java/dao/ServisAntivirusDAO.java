package dao;

import dto.StatsDTO;
import dto.ModulesDTO;
import dto.User;
import list.StatList;

/**
 *
 *Esta es la clase de implementación de el acceso a servis_antivirus
 *
 *@author enikyasta
 */
public interface ServisAntivirusDAO{
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
     * Este método trae todas las estadísticas de los módulos
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @return retorna una lista de las estadísticas
     */
    public StatList getStats();

    public String insertStat(StatsDTO stat);

    public ModulesDTO getStatsByModule(String module,int month);
}
