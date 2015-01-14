/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ViewModels;

import DAL.Spel;
import java.util.List;

/**
 *
 * @author FxA
 */
public class LijstSpelViewModel {
    private List<Spel> spelletjes;

    public LijstSpelViewModel(List<Spel> spelletjes) {
        this.spelletjes = spelletjes;
    }

    public List<Spel> getSpelletjes() {
        return spelletjes;
    }

    public void setSpelletjes(List<Spel> spelletjes) {
        this.spelletjes = spelletjes;
    }
}
