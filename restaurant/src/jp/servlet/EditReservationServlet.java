package jp.servlet;

import java.io.IOException;
import java.util.*;
 
import javax.jdo.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.User;

import model.LinkData;
import model.PMF;

public class EditReservationServlet extends HttpServlet{
	  private static final long serialVersionUID = 1L;
	  
	    @Override
	    protected void doGet(HttpServletRequest req,
	            HttpServletResponse resp)
	            throws ServletException, IOException {
	        resp.setContentType("text/plain");
	        resp.getWriter().println("no url...");
	    }
	 
	    @Override
	    protected void doPost(HttpServletRequest req,
	            HttpServletResponse resp)
	            throws ServletException, IOException {
	        req.setCharacterEncoding("UTF-8");
	        
	      //紐付けて更新するために必要
	        long id = Long.parseLong(req.getParameter("id"));
	        
	        
	        // リクエストパラメータの取得
	        /*String month = req.getParameter("month");
	        String date = req.getParameter("date");
	        String time = req.getParameter("time");
	        String reserveDate = month+"-"+date+"-"+time;*/
	        String reserveDate = req.getParameter("reserveDate");
	        
	      //GAE使用バージョン
	        /*
	        HttpSession session = req.getSession();
	        User user = (User)session.getAttribute("user");
	        String mail = user.getEmail();
	        String name = user.getNickname();
	        */
	        
	        PersistenceManagerFactory factory = PMF.get();
	        PersistenceManager manager = factory.getPersistenceManager();
	        
	        LinkData data = (LinkData)manager.getObjectById(LinkData.class,id);
	       //String name = data.getName();
	       //String mail = data.getMail();
	       
	        //data.setName(name);
	        //data.setMail(mail);
	        data.setreserveDate(reserveDate);
	        
	        manager.close();
	        //とりあえずスタッフが時間を編集できるように
	        resp.sendRedirect("/showreservation.jsp");
	    }
}	
