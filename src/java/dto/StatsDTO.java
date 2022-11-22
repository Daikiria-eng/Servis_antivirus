package dto;

/**
 *
 *Este clase es el objeto estadístico
 *
 *@author enikyasta
 */
public class StatsDTO {
    private String moduleName,
        date;

    public StatsDTO(){}
    public StatsDTO(String moduleName,String date){
        this.moduleName=moduleName;
        this.date=date;
    }
    public String getModuleName() {
        return moduleName;
    }
    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    @Override
    public String toString() {
        return "StatsDTO [moduleName=" + moduleName + ", date=" + date + "]";
    }
}
