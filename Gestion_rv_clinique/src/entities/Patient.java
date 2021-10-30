package entities;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
public class Patient extends User{
    private String antecedents;

    public Patient() {
    }

    public Patient(String antecedents, String nomComplet, String login, String password, String role) {
        super(nomComplet, login, password, role);
        this.antecedents = antecedents;
    }

    public Patient(String antecedents, int id, String nomComplet, String login, String password, String role) {
        super(id, nomComplet, login, password, role);
        this.antecedents = antecedents;
    }

    public String getAntecedents() {
        return antecedents;
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
        return role;
    }
    public void setAntecedents(String antecedents) {
        this.antecedents = antecedents;
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
        this.role = role;
    }
    
    
    
}
