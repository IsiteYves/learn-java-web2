package com.example.demo;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Admission";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>First subroute</h1>");
        out.println("<a href=\"/demo_war_exploded\">Index page</a><br>");
        out.println("<a href=\"admission?q=Yves Isite\">" + message + "</a>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}