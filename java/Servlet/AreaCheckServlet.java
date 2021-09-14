package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import model.*;

@WebServlet("/check")
public class AreaCheckServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Double x,y,r;
    x=redact(req.getParameter("x"));
    y=redact(req.getParameter("y"));
    r=redact(req.getParameter("r"));
    log("in check:" + x + " " + y + " " + r);
    boolean result=check(x,y,r);
    Date startTime=new Date();
    CheckCoordinat checkCoordinat=new CheckCoordinat(x,y,r,result,startTime);
    HttpSession session=req.getSession();
    ManyCheckCoordinat manyCheckCoordinat =(ManyCheckCoordinat) session.getAttribute("manyCheckCoordinat");
    if(manyCheckCoordinat==null){
      manyCheckCoordinat=new ManyCheckCoordinat();
    }
    checkCoordinat.setEndTime(new Date());
    checkCoordinat.setTimework();
    manyCheckCoordinat.addResult(checkCoordinat);
    session.setAttribute("manyCheckCoordinat", manyCheckCoordinat);


  }

  private double redact(String o){
    o=o.replace(",",".");
    return Double.parseDouble(o);
  }



  private boolean check(double x ,double y,double r){
    if (y >= 0) {
      if(x>=0){
        if(y<r/2&&x<r){
          return true;
        }else{
          return false;
        }
      }else {
          if (y>x+r/2&&x<=0&&y>=0){
            return true;
          }else {
            return false;
          }
      }

    }else {
      if(x>=0){
        if(x*x+y*y<r*r){
          return true;
        }else {
          return false;
        }

      }else {
        return false;

      }

    }
  }
}
