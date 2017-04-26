/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package demo;

import com.aspose.words.Document;
import com.aspose.words.PdfSaveOptions;

/**
 *
 * @author SOOD
 */
public class Demo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        
        Document doc=new Document("Demo.docx");
        doc.getMailMerge().execute(new String[]{"FullName","Class","Address"},new Object[]{"kartik","MCA 6th Sem","CHandigarh,sector -14,160014"});
        doc.save("ggggggggg.docx");  //change content
        PdfSaveOptions pdfsaveOptions=new PdfSaveOptions();
        pdfsaveOptions.setPageIndex(0);
        doc.save("dppdpdpd.pdf",pdfsaveOptions);    //convert doc to pdf
        
    }
    
}
