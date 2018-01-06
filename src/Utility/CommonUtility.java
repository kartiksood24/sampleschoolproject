/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

import java.sql.Connection;
import java.awt.Component;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;


public class CommonUtility {
    
    
   Connection dd;
    

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
           public CommonUtility(){ 
                try {
             Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/school";
            dd=(Connection) DriverManager.getConnection(url,"root","root"); 
            
        }
        catch(SQLException e){
        } catch (ClassNotFoundException ex) {
           Logger.getLogger(CommonUtility.class.getName()).log(Level.SEVERE, null, ex);
       }
               
               
               }/**
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
    
     public void printRegistration(String file,String sqlQuery)
        {
           try{ JasperDesign jd= JRXmlLoader.load(file);
            JRDesignQuery query=new JRDesignQuery();
           query.setText(sqlQuery);
            jd.setQuery(query);
            JasperReport jr=JasperCompileManager.compileReport(jd);
            JasperPrint jp;
            jp = JasperFillManager.fillReport(jr, null,dd);
            JasperViewer.viewReport(jp);
           }catch(JRException e){
               System.out.println(e);
           }
        
        }
    
    
    
    
    
    
    

    public static void showDialog(String message, Component c) {
        JOptionPane.showMessageDialog(c, message);
    }
}
