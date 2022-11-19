package manager;

import dto.User;

public interface Manager{
    public String insertUser(User user);

    public String validateUser(User user);
}
