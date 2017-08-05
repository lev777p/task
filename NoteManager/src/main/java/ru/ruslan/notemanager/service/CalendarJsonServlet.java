package ru.ruslan.notemanager.service;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CalendarJsonServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    List l = new ArrayList();

    CalendarDTO c = new CalendarDTO();
    c.setId(1);
    c.setStart("2015-11-28");
    c.setEnd("2015-11-29");
    c.setTitle("Task in Progress");

    CalendarDTO d = new CalendarDTO();
    d.setId(2);
    d.setStart("2013-07-26");
    d.setEnd("2013-08-28");
    d.setTitle("Task in Progress");

    l.add(c);
    l.add(d);

    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    /*out.write(new Gson().toJson(l));*/
}


}
