
package amm.nerdbook.Classi;

import amm.nerdbook.Classi.*;
import java.util.ArrayList;

public class UtenteFactory {

    //Pattern Design Singleton
    private static UtenteFactory singleton;

    public static UtenteFactory getInstance() {
        if (singleton == null) {
            singleton = new UtenteFactory();
        }
        return singleton;
    }

    private ArrayList<Utente> listaUtenti = new ArrayList<Utente>();

    private UtenteFactory() {
        //Creazione utenti

        //Aldie
        Utente utente1 = new Utente();
        utente1.setId(0);
        utente1.setNome("Aldie");
        utente1.setEmail("aldie@gmail.com");
        utente1.setPassword("123");
        utente1.setUrlFotoProfilo("img/profilo (1).jpg");
        utente1.setCognome("Fireball");
        utente1.setPresentazione("Palla di fuoco è il mio motto");

        //Mr2
        Utente utente2 = new Utente();
        utente2.setId(1);
        utente2.setNome("Mr2");
        utente2.setEmail("Mr2@gmail.com");
        utente2.setPassword("123");
        utente2.setUrlFotoProfilo("img/profilo (1).png");

        //Miss3
        Utente utente3 = new Utente();
        utente3.setId(2);
        utente3.setNome("Miss3");
        utente3.setEmail("Miss3@gmail.com");
        utente3.setPassword("123");
        utente3.setUrlFotoProfilo("img/profilo (2).jpg");

        //Mr4
        Utente utente4 = new Utente();
        utente4.setId(3);
        utente4.setNome("Mr4");
        utente4.setEmail("Mr4@gmail.com");
        utente4.setPassword("123");
        utente4.setUrlFotoProfilo("img/profilo (2).png");

        listaUtenti.add(utente1);
        listaUtenti.add(utente2);
        listaUtenti.add(utente3);
        listaUtenti.add(utente4);
    }

    public Utente getUtenteById(int id) {
        for (Utente utente : this.listaUtenti) {
            if (utente.getId() == id) {
                return utente;
            }
        }
        return null;
    }
    
    public int getIdByUserAndPassword(String user, String password){
        for(Utente utente : this.listaUtenti){
            if(utente.getNome().equals(user) && utente.getPassword().equals(password)){
                return utente.getId();
            }
        }
        return -1;
    }
    
    public ArrayList<Utente> getList(){
        return listaUtenti;
    }
}
