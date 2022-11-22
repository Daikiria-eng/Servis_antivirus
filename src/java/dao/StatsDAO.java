package dao;

import dto.StatsDTO;

/**
 *
 * @author enikyasta
 */
public interface StatsDAO {
    public String getStats();
    
    public String insertStat(StatsDTO stat);
}