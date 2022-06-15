package com.example.demo;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello")
public class HelloServlet extends HttpServlet {

//    public void init() {
//        EntityManagerFactory emf = Persistence.createEntityManagerFactory("org.hibernate.tutorial.jpa");
//        EntityManager em=emf.createEntityManager();
//        em.getTransaction().commit();
//    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        String path = request.getServletPath();

        switch (path) {
            case "/new":
                RequestDispatcher dispatcher = request.getRequestDispatcher("/add_student.jsp");
                dispatcher.forward(request, response);
                break;
            case "/list":
                String listTitle= "List of registered Students";
                request.setAttribute("listTitle", listTitle);
                String[][] students = {{"1,","John","20"}, {"2", "Mary", "29"}, {"3", "Peter", "17"}};
                request.setAttribute("studentsArr", students);
                RequestDispatcher dispatcher2 = request.getRequestDispatcher("/list_students.jsp");
                dispatcher2.forward(request, response);
                break;
            default:
                System.out.println("Invalid path!");
        }
    }

    public void destroy() {
    }
}