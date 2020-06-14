
package modelo;


import java.sql.*;
import java.util.logging.Level;
import java.util.ArrayList;
import java.util.logging.Logger;

public class Persona {
    
     //Atributos de la clase 
     String dui;
     String apellidos;
     String nombres;
  
     
     Connection cnn;
     Statement state;
     ResultSet result;
     
  
     
//El constructor lo utilizaremos para la conectar con la base de datos.  
     
public Persona(){
try {
Class.forName("com.mysql.jdbc.Driver");//Driver de la de datos

cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull", "root", ""); //url de la BD, user,pass

} catch (ClassNotFoundException ex) {
Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
} catch (SQLException ex) {
Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
}
}
     
     
 public Persona(String dui, String apellidos, String nombres) {
this.dui = dui;
this.apellidos = apellidos;
this.nombres = nombres;
}
 
  public boolean eliminar(){
         try {
             String miQuery = "DELETE FROM tb_persona WHERE dui_persona='" + dui +"';";
             int estado = 0;
             state = cnn.createStatement();
             estado = state.executeUpdate(miQuery); 
             if(estado == 1){
               return true;
             }
         } catch (SQLException ex) {
             Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error: "+ex.getMessage());
         }
         return false;
     }
 
 
 
//METODO PARA REGISTRAR UNA NUEVA PERSONA
 
public boolean insertarDatos(){

 try{
String miQuery = "insert into tb_persona values('" + dui + "', '" + apellidos + "', '" + nombres + "');"; //LA CONSULTA

int estado = 0;//Estado de la inserccion 
state = cnn.createStatement();
estado = state.executeUpdate(miQuery);
if(estado == 1){
return true;
}
}catch(SQLException ex){
Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
}
return false;
} 
public ArrayList<Persona> consultarRegistros(){
      ArrayList<Persona> person = new ArrayList();//Crear el array de almacenamiento de tipo Persona
      try{
       String miQuery = "select * from tb_persona;";//Definiir la consulta
       state = cnn.createStatement();//Crear el "boton" para la consulta
       result = state.executeQuery(miQuery);// Ejecutar la consulta
       while(result.next()){//Recorre todo el resultset y almacena en cada fila los registros encontrados
                                                     //El nombre de ser asi como esta en la tabla de la base de datos
           person.add(new Persona(result.getString("dui_persona"),result.getString("apellido_persona"),result.getString("nombre_persona")));
         }
      }catch(SQLException ex){
        Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
      }
        return person; //Independientemente encuentro o no registro retorna el objeto person
     }
//GET Y SET
    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
 }

    


