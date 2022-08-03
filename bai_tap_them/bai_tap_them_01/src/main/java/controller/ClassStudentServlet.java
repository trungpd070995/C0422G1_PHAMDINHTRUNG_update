package controller;

import model.ClassStudent;
import service.impl.ClassStudentService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ClassStudentServlet", value = "/classStudent")
public class ClassStudentServlet extends HttpServlet {
    private final ClassStudentService classStudentService = new ClassStudentService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createClassStudent(request, response);
                break;
            default:
                listClassStudent(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");


        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateClassStudent(request, response);
                break;
            default:
                listClassStudent(request, response);
        }
    }

    private void listClassStudent(HttpServletRequest request, HttpServletResponse response) {
        List<ClassStudent> classStudents = classStudentService.findAll();
        request.setAttribute("classStudents", classStudents);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    
    private void createClassStudent(HttpServletRequest request, HttpServletResponse response) {
        String idCarClass = request.getParameter("idCarClass");
        String nameClass = request.getParameter("nameClass");
        String starDayClass = request.getParameter("starDayClass");
        int idClass = (int) (Math.random() * 10000);

        ClassStudent classStudent = new ClassStudent( idClass, idCarClass, nameClass, starDayClass);
        classStudentService.create(classStudent);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/create.jsp");
        request.setAttribute("message", "New product was created");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateClassStudent(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
