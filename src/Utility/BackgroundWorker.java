/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

import static Utility.CommonUtility.CONNECTION_TIMEOUT;
import static Utility.CommonUtility.READ_TIMEOUT;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import javax.swing.SwingWorker;

/**
 *
 * @author SOOD
 */
public class BackgroundWorker extends SwingWorker {

    URL url;
    HttpURLConnection conn;

    @Override
    protected Object doInBackground() throws Exception {
        try {
            // open a connection to the site
            URL url = new URL("");  //add php link here
            URLConnection con = url.openConnection();
            // activate the output
            con.setDoOutput(true);
            PrintStream ps = new PrintStream(con.getOutputStream());
            // send your parameters to your site For eg:
            ps.print("&Username=Username");

            // we have to get the input stream in order to actually send the request
            con.getInputStream();
            // close the print stream
            ps.close();
        } catch (MalformedURLException e1) {
            e1.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return null;

    }
}
