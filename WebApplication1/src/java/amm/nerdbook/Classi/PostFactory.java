
package amm.nerdbook.Classi;

import amm.nerdbook.Classi.UtenteFactory;
import amm.nerdbook.Classi.*;
import java.util.List;
import java.util.ArrayList;

public class PostFactory {

    //Pattern Design Singleton
    private static PostFactory singleton;

    public static PostFactory getInstance() {
        if (singleton == null) {
            singleton = new PostFactory();
        }
        return singleton;
    }

    private ArrayList<Post> listaPost = new ArrayList<Post>();

    private PostFactory() {
        
        UtenteFactory utenteFactory = UtenteFactory.getInstance();

        //Creazione Post
        Post post1 = new Post();
        post1.setContent("Nel dubbio palla di fuoco");
        post1.setId(0);
        post1.setUser(utenteFactory.getUtenteById(0));

        Post post2 = new Post();
        post2.setContent("img/img001.jpg");
        post2.setId(1);
        post2.setUser(utenteFactory.getUtenteById(1));
        post2.setPostType(Post.Type.IMAGE);

        Post post3 = new Post();
        post3.setContent("Chiamami due, quaranta due!");
        post3.setId(2);
        post3.setUser(utenteFactory.getUtenteById(1));
        post3.setPostType(Post.Type.TEXT);

        Post post4 = new Post();
        post4.setContent("Essere o non essere questo è il dilemma");
        post4.setId(3);
        post4.setUser(utenteFactory.getUtenteById(2));

        Post post5 = new Post();
        post5.setContent("img/nerdy_logo.png");
        post5.setId(4);
        post5.setUser(utenteFactory.getUtenteById(2));
        post5.setPostType(Post.Type.IMAGE);

        listaPost.add(post1);
        listaPost.add(post2);
        listaPost.add(post3);
        listaPost.add(post4);
        listaPost.add(post5);
    }

    public Post getPostById(int id) {
        for (Post post : this.listaPost) {
            if (post.getId() == id) {
                return post;
            }
        }
        return null;
    }

    public List getPostList(Utente usr) {

        List<Post> listaPost = new ArrayList<Post>();

        for (Post post : this.listaPost) {
            if (post.getUser().equals(usr)) {
                listaPost.add(post);
            }
        }
        return listaPost;
    }
    
    private String connectionString;
        public void setConnectionString(String s){
    	this.connectionString = s;
    }

    public String getConnectionString(){
    	return this.connectionString;
    }
}
