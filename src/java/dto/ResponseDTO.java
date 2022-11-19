package dto;

public class ResponseDTO{
    private boolean status;

    public ResponseDTO(){}
    public ResponseDTO(boolean status){
        this.status=status;
    }

    public boolean getStatus(){
        return status;
    }
    public void setStatus(boolean status){
        this.status=status;
    }
}
