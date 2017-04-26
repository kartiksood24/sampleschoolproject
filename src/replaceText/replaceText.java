/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package replaceText;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;

/**
 *
 * @author Jai shree ram
 */
public class replaceText {

    /**
     *
     * @param actualText
     * @param fakeText
     * @param path
     * @param pathTo
     * @throws IOException
     */
    public static void fillData(String actualText,String fakeText,String path,String pathTo) throws IOException{
            
            
                    String target=fakeText;
                    String replaced=actualText;
                    String fileOne=path;
                    String fileTwo=pathTo;
                           
                    
                    XWPFDocument doc = new XWPFDocument(new FileInputStream(fileOne));
                        for (XWPFParagraph p : doc.getParagraphs()) {
                             List<XWPFRun> runs = p.getRuns();
                                if (runs != null) {
                                    for (XWPFRun r : runs) {
                                        String text = r.getText(0);
                                         if (text != null && text.contains(target)) {
                                          text = text.replaceAll(target,replaced);
                                          r.setText(text, 0);
                            } } }  }
            
                doc.write(new FileOutputStream(fileTwo));
            
            }

}
