package org.dspace.app.mediafilter;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.FileInputStream;
import java.io.ByteArrayOutputStream;
import java.lang.Runtime;
import java.lang.Process;
import java.io.File;
import org.dspace.content.Item;
import org.dspace.core.ConfigurationManager;

/**
 * Filter image bitstreams, scaling the image to be within the bounds of
 * thumbnail.maxwidth, thumbnail.maxheight, the size we want our thumbnail to be
 * no bigger than. Creates only JPEGs.
 */
public class ImgFilter extends MediaFilter
{
private String handle;
    public String getFilteredName(String oldFilename)
    {
        return oldFilename + "_vis.jpg";
    }

    /**
     * @return String bundle name
     *  
     */
    public String getBundleName()
    {
        return "VISOR";
    }
    public void setHandleString(String handle)
    {
	this.handle=handle ;
    }
    /**
     * @return String bitstreamformat
     */
    public String getFormatString()
    {
        return "JPEG";
    }

    /**
     * @return String description
     */
    public String getDescription()
    {
        return "Generated Visor Image";
    }

    /**
     * @param source
     *            source input stream
     * 
     * @return InputStream the resulting input stream
     */
    public InputStream getDestinationStream(Item currentItem, InputStream source, boolean verbose)
            throws Exception
    {
            String tempfile = ConfigurationManager.getProperty("filter.tempfile.config");
            int random=(int)(Math.random()*10000);
            String tempSource = tempfile+"dspaceSourceImg"+random;
            String tempImage = tempfile+"dspaceImageImg"+random+".jpg";
		
     /*   byte[] byt= null;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        int b=0;      
        b = source.read();
        while( b != -1)
        {
            baos.write(b);
            b = source.read();            
        }
        byt = baos.toByteArray();
		
		FileOutputStream fout = new FileOutputStream(tempSource); 
		fout.write(byt);
		fout.flush();
		fout.close();*/

	OutputStream out = new FileOutputStream(new File(tempSource));
 
	int read = 0;
	byte[] bytes = new byte[1024];
 
	while ((read = source.read(bytes)) != -1) {
		out.write(bytes, 0, read);
	}
 
	source.close();
	out.flush();
	out.close();
		
		String convert = ConfigurationManager.getProperty("filter.exec.convert");
		String PanimetriaImgConfig = ConfigurationManager.getProperty("filter.ImgFilter.visor.config");
		String cmd = convert+" "+tempSource+" "+PanimetriaImgConfig+" "+tempImage;
		Process p = Runtime.getRuntime().exec(cmd);
		p.waitFor();
		

File fichero = new File(tempImage);

if (!fichero.exists()){
tempImage = tempfile+"dspaceImageImg"+random+"-0.jpg";
}
        InputStream bais = new FileInputStream(tempImage);

         cmd ="rm -rf "+tempSource+" "+tempImage;
         //System.out.println("executant comanda : "+cmd);
         p = Runtime.getRuntime().exec(cmd);
             p.waitFor();
        return bais;
    }
}

