package connection;
import java.sql.Connection;
import java.sql.DriverManager;


public class conexion {

static String usuario= "adusys_dispel";
static String contrasena= "d1sp3l43";
static String conexionURL="jdbc:mysql://localhost/dadusys_dispel";

    @SuppressWarnings("empty-statement")
     public static java.sql.Connection getMysqlConnection(){  
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection(conexionURL,usuario,contrasena);
            return con;
        }
        catch(Exception e){
            System.out.println("ERROR = "+e);
            return null;
        }
    }

}
