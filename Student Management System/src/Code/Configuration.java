package Code;


import java.io.FileInputStream;
import java.io.FileReader;
import java.util.*;

/**
 *
 * @author Amila
 */
public class Configuration {
    
    private static Properties properties =  new Properties();
    
    public static void Configuration(){
        loadConfiguration();
    }
    public static void loadConfiguration(){
        try{
            FileInputStream configFileStream = new FileInputStream("config.properties");
            properties.load(configFileStream);
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public static String getPropety(String key){
        if(properties.isEmpty()){
            loadConfiguration();
        }
        String value = properties.getProperty(key,"");
        return value;
    }
}
