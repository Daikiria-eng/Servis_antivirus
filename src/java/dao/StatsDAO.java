package dao;

import dto.StatsDTO;

/**
 *
 *Esta es la clase de implementación del acceso al objeto de estadísticas
 *
 *@author enikyasta
 */
public interface StatsDAO {
    /**
     * Este método trae todas las estadísticas de los módulos
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @return retorna una lista de las estadísticas
     */
    public String getStats();

    /**
     * Este método inserta el dato estadístico generado por el usuario
     * 
      e puede haber errores al conectarse a la base
     *@param stat Objeto de estadística que esrá insertada
     *@return objeto de estado de la inserción
     */
    public String insertStat(StatsDTO stat);

    public String getStatsByModule();
}
