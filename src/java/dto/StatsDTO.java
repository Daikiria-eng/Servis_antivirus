package dto;

/**
 *
 *Este clase es el objeto estadístico
 *
 *@author enikyasta
 */
public class StatsDTO {
    private int idUser;
    private String moduleName,
        date;

    public StatsDTO(){}
    public StatsDTO(int idUser,String moduleName,String date){
        this.idUser=idUser;
        this.moduleName=moduleName;
        this.date=date;
    }

    public void setIdUser(int idUser){
        this.idUser=idUser;
    }
    public int getIdUser(){
        return idUser;
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
        return "StatsDTO [idUser=" + idUser + ", moduleName=" + moduleName + ", date=" + date + "]";
    }
}
