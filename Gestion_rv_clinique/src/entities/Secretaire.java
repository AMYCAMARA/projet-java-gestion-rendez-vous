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
public class Secretaire extends User {
    private final String ROLE;
    
    public Secretaire() {
        this.ROLE = "ROLE_SECRETAIRE";
    }

    public Secretaire(String nomComplet, String login, String password, String role) {
        super(nomComplet, login, password, role);
        this.ROLE = "ROLE_SECRETAIRE";
    }

    public Secretaire(int id, String nomComplet, String login, String password, String role) {
        super(id, nomComplet, login, password, role);
        this.ROLE = "ROLE_SECRETAIRE";
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
