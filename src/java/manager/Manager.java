package manager;

import dto.User;
import list.StatList;

public interface Manager{
    public String insertUser(User user);

    public String validateUser(User user);

    public StatList getStats();
}
