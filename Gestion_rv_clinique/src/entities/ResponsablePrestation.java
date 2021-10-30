/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author HP
 */
public class ResponsablePrestation extends User{
    private String statut;
    private final String ROLE;

    public ResponsablePrestation() {
        this.ROLE = "ROLE_RESPONSABLE_PRESTATION";
    }

    public ResponsablePrestation(String statut, String nomComplet, String login, String password,String role) {
        super(nomComplet, login, password,role);
        this.ROLE = "ROLE_RESPONSABLE_PRESTATION";
        this.statut = statut;
    }

    public ResponsablePrestation(String statut, int id, String nomComplet, String login, String password,String role) {
        super(id, nomComplet, login, password,role);
        this.ROLE = "ROLE_RESPONSABLE_PRESTATION";
        this.statut = statut;
    }

    private ResponsablePrestation(int id, String nomComplet, String login, String password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getStatut() {
        return statut;
    }

    @Override
    public int getId() {
        return id;
    }

    @Override
    public String getNomComplet() {
        return nomComplet;
    }

    @Override
    public String getLogin() {
        return login;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getRole() {
        return ROLE;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    @Override
    public void setNomComplet(String nomComplet) {
        this.nomComplet = nomComplet;
    }

    @Override
    public void setLogin(String login) {
        this.login = login;
    }

    @Override
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public void setRole(String role) {
        this.role = ROLE;
    }
    
    
}
