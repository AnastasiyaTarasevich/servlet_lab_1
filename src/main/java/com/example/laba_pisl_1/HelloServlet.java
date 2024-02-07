package com.example.laba_pisl_1;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
private List <Double> athlete1;
    private List <Double> athlete2;

    public void init() {

        athlete1=new ArrayList<>();
        athlete2=new ArrayList<>();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        double athlete1Day1=Double.parseDouble(request.getParameter("athlete1_day1"));
        double athlete1Day2=Double.parseDouble(request.getParameter("athlete1_day2"));
        double athlete1Day3=Double.parseDouble(request.getParameter("athlete1_day3"));
        double athlete2Day1=Double.parseDouble(request.getParameter("athlete2_day1"));
        double athlete2Day2=Double.parseDouble(request.getParameter("athlete2_day2"));
        double athlete2Day3=Double.parseDouble(request.getParameter("athlete2_day3"));
        athlete1.clear();
        athlete2.clear();
        athlete1.add(athlete1Day1);
        athlete1.add(athlete1Day2);
        athlete1.add(athlete1Day3);

        athlete2.add(athlete2Day1);
        athlete2.add(athlete2Day2);
        athlete2.add(athlete2Day3);
        request.setAttribute("athlete1", athlete1);
        request.setAttribute("athlete2", athlete2);
        request.getRequestDispatcher("result.jsp").forward(request, response);

    }

    public void destroy() {
    }
}