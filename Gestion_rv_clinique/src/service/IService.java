/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import entities.Patient;
import entities.User;
import java.util.List;

/**
 *
 * @author HP
 */
public interface IService {
     public int addRendezVous(RendezVous rendezVous);
    public boolean updateRendezVous(RendezVous rendezVous);
    public boolean deleteRendezVous(int id);
    public List<RendezVous> searchAllRendezVous();
    public RendezVous searchOneRendezVous(int id);
      
     
    
    public List<Patient> showAllPatient();
    public List<RendezVous> searchRendezVousByPatient();
 
    
    
    
      
/*Se connecter */
    public User login(String login,String password);
    
}
