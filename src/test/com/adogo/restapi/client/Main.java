package test.com.adogo.restapi.client;

import org.apache.log4j.Logger;

import com.adogo.uaas.entity.UserAccount;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

//import static org.apache.log4j.Logger.getLogger;

@PropertySource("classpath:application.properties")
public class Main
{
	private final static Logger logger = Logger.getLogger(Main.class);

    public static void main(String[] args) throws IOException
    {
    	logger.info("Starting REST Client!!!!");
    	System.out.println("Starting REST Client!!!!");
        /**
         * This is going to setup the REST server configuration in the applicationContext
         * you can see that I am using the new Spring's Java Configuration style and not some OLD XML file
         */
        //ApplicationContext context = new AnnotationConfigApplicationContext(RESTConfiguration.class);

        /**
         * We now get a RESTServer bean from the ApplicationContext which has all the data we need to
         * log into the REST service with.
         */
        //RESTServer mRESTServer = context.getBean(RESTServer.class);

        /**
         * Setting up data to be sent to REST service
         */
        Map<String, String> vars = new HashMap<String, String>();
        vars.put("id", "2");
        //vars.put("name", "Regan");
        /**
         * Doing the REST call and then displaying the data/user object
         */
        try
        {
            RestTemplate rt = new RestTemplate();
            //rt.getMessageConverters().add(new MappingJacksonHttpMessageConverter());
            rt.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
            rt.getMessageConverters().add(new StringHttpMessageConverter());

            //String uri = new String("http://" + mRESTServer.getHost() + ":8080/springmvc-resttemplate-test/api/{id}");
            //String uri = new String("http://127.0.0.1:8088/api/{id}");
            //String uri = new String("http://127.0.0.1:8088/acp/useracct-test/{id}");
            String uri = new String("http://127.0.0.1:8080/acp/useracct-test/{id}");
            //String uri = new String("http://127.0.0.1:8088/api/{name}");

            UserAccount getResult = rt.getForObject(uri, UserAccount.class, vars);

            System.out.println("Get User:  " + getResult.toString());
            
            //test post api
//          String postUri = new String("http://127.0.0.1:8088/acp/useracct-test");
            String postUri = new String("http://127.0.0.1:8080/acp/useracct-test");
            UserAccount userAccount = new UserAccount();
    		userAccount.setAcctName("f6@gmail.com");
    		userAccount.setPassword("123");
    		UserAccount postResult = rt.postForObject(postUri, userAccount, UserAccount.class); //, vars
    		System.out.println("Post User:  " + postResult.toString());
    		long id = postResult.getAcctId();
    		vars.put("id", Long.toString(id));
    		
            //test put api
            String putUri = new String("http://127.0.0.1:8080/acp/useracct-test/{id}");
            UserAccount userAccountToBeChanged = new UserAccount();
            userAccountToBeChanged.setAcctName("athens319@hotmail.com");
            userAccountToBeChanged.setPassword("112");
            rt.put(putUri, userAccountToBeChanged, vars);
      		//System.out.println("Put User:  " + putResult.toString()); 
      		
      		//test delete api
      		String deleteUri = new String("http://127.0.0.1:8080/acp/useracct-test/{id}");
      		rt.delete(deleteUri, vars);
        }
        catch (HttpClientErrorException e)
        {
            /**
             * If we get a HTTP Exception display the error message
             */
        	System.out.println("error1:  " + e.getMessage()); //.getResponseBodyAsString()
            //ObjectMapper mapper = new ObjectMapper();
            //ErrorHolder eh = mapper.readValue(e.getResponseBodyAsString(), ErrorHolder.class);
            //LOGGER.error("error:  " + eh.getErrorMessage());
        }
        catch(Exception e)
        {
        	System.out.println("error2:  " + e.getMessage());
        }
    }

}
