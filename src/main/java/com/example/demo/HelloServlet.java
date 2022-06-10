package com.example.demo;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Admission";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        String path = request.getServletPath();
        System.out.println("path: " + path);

        switch (path) {
            case "/new":
                RequestDispatcher dispatcher = request.getRequestDispatcher("/add_student.jsp");
                dispatcher.forward(request, response);
                break;
            case "/list":
                String listTitle= "List of registered Students";
                request.setAttribute("listTitle", listTitle);
                RequestDispatcher dispatcher2 = request.getRequestDispatcher("/list_students.jsp");
                dispatcher2.forward(request, response);
                break;
            default:
                System.out.println("Invalid path!");
        }

        // Hello
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        out.println("<h1>First subroute</h1>");
//        out.println("<a href=\"/\">Index page</a><br>");
//        out.println("<a href=\"admission?q=Yves Isite\">" + message + "</a>");
//        out.println("</body></html>");
    }

    public void destroy() {
    }
}