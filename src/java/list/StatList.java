package list;

import com.google.gson.Gson;
import dto.StatsDTO;

/**
 *En esta clase se opera la lista de estadísticas
 *
 *@author enikyasta
 */
public class StatList {
    private StatNodo head,end,p=null;
    Gson gson=new Gson();

    public StatList(){
        head=null;
        end=null;
    }

    /**
     * Aquí se llena la lista con objetos de las estadísticas
     *
     *@param jsonData un objecto json de la estadísticas
     */
    public void fillStats(String jsonData){
        try{
            p=new StatNodo();
            p.stats=gson.fromJson(jsonData, StatsDTO.class);
            if(head==null){
                head=p;
                end=p;
            }else{
                end.garter=p;
            }
            end=p;
        }catch(Exception e){
            System.out.println("[-] Error al llenar lista de stats: "+e);
            e.printStackTrace();
        }
    }

    public void printList(){
        p=head;
        while(p!=null){
            System.out.printf("[ %s ]--> ",p.stats);
            p=p.garter;
        }
        System.out.print("[ \\\\ ]");
    }

    /**
     *Se exporta la lista a un vector
     *
     *@return la lista exportada a vector
     */
    public StatsDTO[] toArray(){
        p=head;
        StatsDTO[] array={};
        int counter=1;
        while(p!=null){
            counter++;
            p=p.garter;
        }
        p=head;
        int i=0;
        while(p!=null){
            array=new StatsDTO[counter];
            array[i]=p.stats;
            i++;
            p=p.garter;
        }
        return array;
    }
}
