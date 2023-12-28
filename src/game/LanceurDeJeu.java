package game;

/**
 *
 * @author achrafsbartai
 */
public class LanceurDeJeu {
    public static void main(String args[]) {
        Jeu jeu = new JeuDevineLeMotOrdre();
        jeu.execute();
    }
}