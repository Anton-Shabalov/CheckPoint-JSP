package Servlet;

import model.ManyCheckCoordinat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {
  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    HttpSession session=req.getSession();
    session.setAttribute("startTime", new Date());
    String x=req.getParameter("x");
    String y=req.getParameter("y");
    String r=req.getParameter("r");

      if(x!=null && y!=null & r!=null){
        String path = "/check";
        request("/check",req,resp);
        session = req.getSession();
        log(((ManyCheckCoordinat) session.getAttribute("manyCheckCoordinat")).getResults().toString());
      }else {
        if(req.getMethod().equals("DELETE")){
          request("/сlear",req,resp);
        }else {
          request("/index.jsp",req,resp);
        }
      }
  }


  protected void request(String url,HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
//    ServletContext servletContext = getServletContext();
//    RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(url);
//    requestDispatcher.forward(req, resp);
    req.getRequestDispatcher(url).forward(req, resp);
    log("forward");
  }
}
