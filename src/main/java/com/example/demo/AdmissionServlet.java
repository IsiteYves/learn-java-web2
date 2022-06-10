package com.example.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdmissionServlet", value = "/admission")
public class AdmissionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Admission page</h2>");
        out.println("<p><b>q param value:</b>" + request.getParameter("q") + "</p>");
        out.println("<a href=\"/demo_war_exploded\">Root page</a><br>");
        out.println("<a href=\"hello\">First subroute</a>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
