package net.ukr.bekit;

import java.io.IOException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    static final String LOGIN = "admin";
    static final String PASS = "admin";
    public static int loveYes=0;
    public static int loveNo=0;
    public static int salaryMany=0;
    public static int salaryFew=0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String love = request.getParameter("love");
        String salary = request.getParameter("salary");

        if(love.equals("yes")){
            loveYes++;
        }
        if(love.equals("no")){
            loveNo++;
        }
        if(salary.equals("many")){
            salaryMany++;
        }
        if(salary.equals("few")){
            salaryFew++;
        }
        HttpSession session = request.getSession(true);
        session.setAttribute("user_name", name+" "+surname);


        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String a = request.getParameter("a");
        HttpSession session = request.getSession(false);

        if ("exit".equals(a) && (session != null))
            session.removeAttribute("user_name");

        response.sendRedirect("index.jsp");
    }
}
