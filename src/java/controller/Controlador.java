package controller;

import dao.EmpleadoJpaController;
import dao.exceptions.NonexistentEntityException;
import entity.Empleado;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    ModelAndView mv = new ModelAndView();
    EmpleadoJpaController jpa = new EmpleadoJpaController();
    List datos;
    int id;

    @RequestMapping("index.htm")
    public ModelAndView listar() {
        try {
            datos = jpa.findEmpleadoEntities();
            mv.addObject("lista", datos);
            mv.setViewName("index");
        } catch (Exception e) {
            e.getMessage();
        }
        return mv;
    }

    @RequestMapping(value = "registro.htm", method = RequestMethod.GET)
    public ModelAndView registrar() {
        try {
            mv.addObject(new Empleado());
            mv.setViewName("registro");
        } catch (Exception e) {
            e.getMessage();
        }
        return mv;
    }

    @RequestMapping(value = "registro.htm", method = RequestMethod.POST)
    public ModelAndView registrar(Empleado emp) {
        try {
            jpa.create(emp);
        } catch (Exception e) {
            e.getMessage();
        }
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "edit.htm", method = RequestMethod.GET)
    public ModelAndView editar() {
        try {
            mv.addObject(new Empleado());
            mv.setViewName("edit");
        } catch (Exception e) {
            e.getMessage();
        }
        return mv;
    }

    @RequestMapping(value = "edit.htm", method = RequestMethod.POST)
    public ModelAndView editar(Empleado emp) {
        try {
            jpa.edit(emp);
        } catch (Exception e) {
            e.getMessage();
        }
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "eliminar.htm", method = RequestMethod.GET)
    public ModelAndView eliminar(HttpServletRequest request) throws NonexistentEntityException {
        try {
            id = Integer.parseInt(request.getParameter("id"));
            jpa.destroy(id);
        } catch (NumberFormatException e) {
            e.getMessage();
        }
        return new ModelAndView("redirect:/index.htm");
    }
}
