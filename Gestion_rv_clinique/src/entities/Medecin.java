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
public class Medecin extends User{
    private String specialistion;
    private final String ROLE;

   

    public Medecin(String specialistion, String nomComplet, String login, String password, String role) {
        super(nomComplet, login, password, role);
        this.ROLE = "ROLE_MEDECIN";
        
        this.specialistion = specialistion;
    }

    public Medecin(String specialistion, int id, String nomComplet, String login, String password, String role) {
        super(id, nomComplet, login, password, role);
        this.ROLE = "ROLE_MEDECIN";
        
        this.specialistion = specialistion;
    }

    public void setSpecialistion(String specialistion) {
        this.specialistion = specialistion;
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

    public String getSpecialistion() {
        return specialistion;
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
    
    
    
}
