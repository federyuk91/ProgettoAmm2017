/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

import amm.nerdbook.Classi.*;
import java.util.ArrayList;
/**
 *
 * @author Federico
 */
public class GruppiFactory {
    //Pattern Design Singleton
    private static GruppiFactory singleton;

    public static GruppiFactory getInstance() {
        if (singleton == null) {
            singleton = new GruppiFactory();
        }
        return singleton;
    }

    private ArrayList<Gruppi> listaGruppi = new ArrayList<Gruppi>();

    private GruppiFactory() {
        
        Gruppi gruppo1 = new Gruppi("Mongolfieristi");
        Gruppi gruppo2 = new Gruppi("D&D");
        Gruppi gruppo3 = new Gruppi("Cattivi anonimi");
        Gruppi gruppo4 = new Gruppi("Caotici neutrali");
        
        listaGruppi.add(gruppo1);
        listaGruppi.add(gruppo2);
        listaGruppi.add(gruppo3);
        listaGruppi.add(gruppo4);
    }
    
    public ArrayList<Gruppi> getList(){
        return listaGruppi;
    }
    
    private String connectionString;
        public void setConnectionString(String s){
    	this.connectionString = s;
    }

    public String getConnectionString(){
    	return this.connectionString;
    }
}
