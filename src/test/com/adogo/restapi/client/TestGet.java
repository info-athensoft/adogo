package test.com.adogo.restapi.client;


import com.adogo.uaas.entity.UserAccount;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;

import java.io.*;
import java.net.*;
import javax.xml.xpath.*;
import org.apache.http.*;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.client.utils.*;
import org.apache.http.entity.*;
import org.apache.http.impl.client.*;
import org.apache.http.util.*;
import org.apache.log4j.Logger;
import org.xml.sax.*;
import static org.apache.log4j.Logger.getLogger;

public class TestGet
{
    private static final Logger logger = getLogger(TestGet.class);

	public final static void main(String[] args) {
	    
	    HttpClient httpClient = new DefaultHttpClient();
	    try {
	      HttpGet httpGetRequest = new HttpGet("http://127.0.0.1:8088/acp/useracct-test/2");
	      HttpResponse httpResponse = httpClient.execute(httpGetRequest);

	      System.out.println("----------------------------------------");
	      System.out.println(httpResponse.getStatusLine());
	      System.out.println("----------------------------------------");

	      HttpEntity entity = httpResponse.getEntity();
	      String json = EntityUtils.toString(entity);
	      
	      UserAccount userAccount = new UserAccount();
		    ObjectMapper mapper = new ObjectMapper();
		    try {
				userAccount = mapper.readValue(json, UserAccount.class);
			} catch (IOException e) {
				e.printStackTrace();
			}
	      
	      System.out.println("userAccount: " + userAccount);
	      System.out.println("----------------------------------------");
/*
	      byte[] buffer = new byte[1024];
	      if (entity != null) {
	        InputStream inputStream = entity.getContent();
	        try {
	          int bytesRead = 0;
	          BufferedInputStream bis = new BufferedInputStream(inputStream);
	          while ((bytesRead = bis.read(buffer)) != -1) {
	            String chunk = new String(buffer, 0, bytesRead);
	            System.out.println(chunk);
	          }
	          System.out.println("----------------------------------------");
	        } catch (Exception e) {
	          e.printStackTrace();
	        } finally {
	          try { inputStream.close(); } catch (Exception ignore) {}
	        }
	      } */
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      httpClient.getConnectionManager().shutdown();
	    }
	  }

}
