package dto;

/**
 *
 *Esta clase es el objeto de petición parametrizado con Usuario
 *
 *@author enikyasta
 */
public class RequestDTO{
    private boolean status;
    private String fullName,
        email,
        password,
        action;

    public RequestDTO(){}
    public RequestDTO(boolean status){
        this.status=status;
    }

    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getAction() {
        return action;
    }
    public void setAction(String action) {
        this.action = action;
    }
    public boolean getStatus(){
        return status;
    }
    public void setStatus(boolean status){
        this.status=status;
    }
    @Override
    public String toString() {
        return "RequestDTO [status=" + status + ", fullName=" + fullName + ", email=" + email + ", password=" + password
                + ", action=" + action + "]";
    }
}
