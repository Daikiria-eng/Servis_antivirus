package dto;

public class RequestStatsDTO{
    private String action,
            moduleName,
            date;

    public RequestStatsDTO(){}
    public RequestStatsDTO(String action,String moduleName,String date){
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
