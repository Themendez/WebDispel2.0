/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany;
import java.util.*;
import java.util.regex.*;




public class MyForm {
/* The properties */
String email = "";
String zipcode = "";
String nombre = "";
String apellido = "";

public String getEmail()
{ return email; }

public void setEmail(String email)
{ this.email = email.trim(); }

public String getZipcode()
{ return zipcode; }

public void setZipcode(String zipcode)
{ this.zipcode = zipcode.trim(); }

public String getNombre()
{ return nombre; }

public void setNombre(String nombre)
{ this.nombre = nombre.trim(); }

/* Errors */ 
public static final Integer ERR_EMAIL_ENTER = new Integer(1); 
public static final Integer ERR_EMAIL_INVALID = new Integer(2); 
public static final Integer ERR_ZIPCODE_ENTER = new Integer(3); 
public static final Integer ERR_ZIPCODE_INVALID = new Integer(4); 
public static final Integer ERR_ZIPCODE_NUM_ONLY = new Integer(5); 
public static final Integer ERR_NOMBRE_ENTER = new Integer(6);
public static final Integer ERR_NOMBRE_INVALID = new Integer(7);
public static final Integer ERR_NOMBRE_LET_ONLY = new Integer(8);


// Holds error messages for the properties 
Map errorCodes = new HashMap(); 
// Maps error codes to textual messages. 
// This map must be supplied by the object that instantiated this bean. 

Map msgMap; 
public void setErrorMessages(Map msgMap) 
{ this.msgMap = msgMap; }

public String getErrorMessage(String propName) { 
Integer code = (Integer)(errorCodes.get(propName));
 
 if (code == null) 
 { 
    return "";
 } else if (msgMap != null) { 
    String msg = (String)msgMap.get(code);
   if (msg != null) 
   { 
       return msg; 
   } 
 } 
   return "Error";
}  

/* Form validation and processing */ 
public boolean isValid() { 
    
    // Clear all errors 
    errorCodes.clear();
    
    // Validate email
    Pattern p = Pattern.compile(".+@.+\\..+");
    Matcher m = p.matcher(email);
    if (email.length() == 0)
    { errorCodes.put("email", ERR_EMAIL_ENTER); 
    } //else if (!email.matches(".+@.+\\..+")) {
    else if (!m.matches()) {
        errorCodes.put("email", ERR_EMAIL_INVALID);
    }  

    // Validate zipcode 
    if (zipcode.length() == 0) 
       { 
        errorCodes.put("zipcode", ERR_ZIPCODE_ENTER); } 
       else if (zipcode.length() != 5) 
       { errorCodes.put("zipcode", ERR_ZIPCODE_INVALID); } 
       else { try { int i = Integer.parseInt(zipcode); } catch 
        (NumberFormatException e) { errorCodes.put("zipcode", ERR_ZIPCODE_NUM_ONLY); } } 
   
    // Validate nombre
    //input = "martin";
    p = Pattern.compile("[A-Za-z.]+");
    m = p.matcher(nombre);
       if (nombre.length() == 0)
       {errorCodes.put("nombre", ERR_NOMBRE_ENTER); }
       else if (nombre.length() < 3)
       { errorCodes.put("nombre", ERR_NOMBRE_INVALID); }
       else if(!m.matches())
       { errorCodes.put("nombre", ERR_NOMBRE_LET_ONLY); }




    // If no errors,form is valid
    
    return errorCodes.size() == 0; } 
    public boolean process() 
    { if (!isValid()) { return false; } 

      // Process form...
     // Clear the form 
    email = ""; 
    zipcode = "";
    nombre = "";
    errorCodes.clear();
    return true; }


}
