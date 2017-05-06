/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

/**
 *
 * @author Federico
 */
public class Gruppi {
    private String nomeGruppo;
    private int utentiGruppo;
    
    /*Costruttore*/
    public Gruppi(String nomeGruppo){
        this.nomeGruppo=nomeGruppo;
        this.utentiGruppo=0;
    }

    public String getNomeGruppo() {
        return nomeGruppo;
    }

    public void setNomeGruppo(String nomeGruppo) {
        this.nomeGruppo = nomeGruppo;
    }

    public int getUtentiGruppo() {
        return utentiGruppo;
    }

    public void setUtentiGruppo(int utentiGruppo) {
        this.utentiGruppo = utentiGruppo;
    }
    
    public void addMember(){
        this.utentiGruppo++;
    }
    public void removeMember(){
        this.utentiGruppo--;
    }
    
}
