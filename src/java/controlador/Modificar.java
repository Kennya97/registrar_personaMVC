
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;

public class Modificar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("mosrar");
        String duimodificar = request.getParameter("dui"); //Dui de URL
        System.out.println("El dui es: "+ duimodificar);
        Persona utilidades = new Persona();
        Persona persona;
        // BUsca y guarda el registro
        persona = (Persona) utilidades.buscarRegistro(duimodificar);
        
        // Creo las variables para la vista
        request.setAttribute("DUI", persona.getDui());
        request.setAttribute("NOMBRE", persona.getNombres());
        request.setAttribute("APELLIDOS", persona.getApellidos());
        request.setAttribute("DUIMODI", duimodificar);
        request.getRequestDispatcher("Editar.jsp").forward(request, response);
       // processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String duimodificar = request.getParameter("duimodi");
        String accion = request.getParameter("accion");
        if(accion == null){accion = "nada";}
        if(accion.equalsIgnoreCase("actualizar")){
        // Captura los datos de la vista editar
        String dui = request.getParameter("txtDui");
        String apellidos = request.getParameter("txtApellidos");
        String nombres = request.getParameter("txtNombres");
        
            Persona person = new Persona();
            person.setDui(dui);
            person.setNombres(nombres);
            person.setApellidos(apellidos);

            if (person.modificarDatos(duimodificar) == true ) {                    
                    request.getRequestDispatcher("Mostrar.do").forward(request, response);
                } else {
                    request.getRequestDispatcher("noexito.jsp").forward(request, response);
                }
        
        }

        //request.getRequestDispatcher("Editar.jsp").forward(request, response);
       // processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
