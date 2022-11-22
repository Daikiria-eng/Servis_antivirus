package util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *Esta es la clase de utilidades, donde se guardan procesos
 *A los que accederán diferentes clases.
 *
 *@author enikyasta
 */
public class Util{
    /**
     * En este método se hashea un String cualquiera
     *
     *@param charac Una cadena de texto cualquera
     *@return el hash de la cadena con el algoritmo SHA-256
     */
    public static String getSHA(String charac){
        StringBuilder hexString=new StringBuilder(2 * charac.length());
        try{
            MessageDigest msgDig=MessageDigest.getInstance("SHA-256");
            byte[] hash=msgDig.digest(charac.getBytes(StandardCharsets.UTF_8));

            for(int i=0;i<hash.length;i++){
                String temp=Integer.toHexString(0xff & hash[i]);
                if(temp.length()==1)
                    hexString.append('0');
                hexString.append(temp);
            }
        }catch (NoSuchAlgorithmException nae){
            System.out.println("[-] Error al hashear: "+nae);
            nae.printStackTrace();
        }
        return hexString.toString();
    }
}
