package dto;

public class RequestStatsDTO{
    private int idUser;
    private String action,
            moduleName,
            date;

    public RequestStatsDTO(){}
    public RequestStatsDTO(String action,int idUser,String moduleName,String date){
        this.idUser=idUser;
        this.action=action;
        this.moduleName=moduleName;
        this.date=date;
    }

    public String getAction(){
        return action;
    }
    public void setAction(String action){
        this.action=action;
    }

    public void setIdUser(int idUser){
        this.idUser=idUser;
    }
    public int getIdUser(){
        return idUser;
    }

    public String getModuleName(){
        return moduleName;
    }
    public void setModuleName(String moduleName){
        this.moduleName=moduleName;
    }

    public String getDate(){
        return date;
    }
    public void setDate(String date){
        this.date=date;
    }
}
