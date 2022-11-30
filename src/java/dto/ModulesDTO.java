package dto;

/**
 *
 * @author enikyasta
 */
public class ModulesDTO {
    private String moduleName;
    private int count;

    public ModulesDTO(){}
    public ModulesDTO(String moduleName){
        this.moduleName=moduleName;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
    
    @Override
    public String toString(){
        return "{\"moduleName\":\""+moduleName+"\",\"count\":"+count+"}";
    }
}
