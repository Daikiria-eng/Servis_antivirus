import java.util.Date;
import java.util.Calendar;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.text.SimpleDateFormat;

public class prueba{
    public static void main(String[]args){
        String date=new SimpleDateFormat("MM").format(Calendar.getInstance().getTime());
        System.out.println(date);

        String Msg="asdf-asdf";
        Pattern pattern=Pattern.compile("[<>-]");
        Matcher matcher=pattern.matcher(Msg);
        if(matcher.find()){
            System.out.println(matcher.replaceAll("<>"));
        }
    }
}
