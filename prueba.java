import java.util.Date;
import java.util.Calendar;
import java.text.SimpleDateFormat;

public class prueba{
    public static void main(String[]args){
        String date=new SimpleDateFormat("MM").format(Calendar.getInstance().getTime());
        System.out.println(date);
    }
}
