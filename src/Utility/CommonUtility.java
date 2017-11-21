/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

import java.awt.Component;
import java.awt.List;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author SOOD
 */
public class CommonUtility {

    public static final int CONNECTION_TIMEOUT = 10000;
    public static final int READ_TIMEOUT = 15000;

    public static final boolean isNumeric(String value) {
        for (char c : value.toCharArray()) {
            if (!Character.isDigit(c)) {
                return false;
            }
        }
        return true;
    }

    /**
     *
     * @param list
     * @param conjunction
     * @return
     */
    static public String join(ArrayList list, String conjunction)
{
   StringBuilder sb = new StringBuilder();
   boolean first = true;
   for (Object item : list)
   {
      if (first)
         first = false;
      else
         sb.append(conjunction);
      sb.append(item);
   }
   return sb.toString();
}
    
    
    
    
    
    
    
    
    

    public static void showDialog(String message, Component c) {
        JOptionPane.showMessageDialog(c, message);
    }
}
