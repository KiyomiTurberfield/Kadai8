package jp.servlet;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.JDOObjectNotFoundException;
import javax.jdo.PersistenceManager;
import javax.jdo.PersistenceManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import model.LinkData;
import model.PMF;

//今は使ってない
@SuppressWarnings("serial")
public class CustomerReservationCheck extends HttpServlet {
  
	  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    }
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	
	        PersistenceManagerFactory factory = PMF.get();
	        PersistenceManager manager = factory.getPersistenceManager();
	        response.setCharacterEncoding("UTF-8");
	        //response.setContentType("text/html");
	        request.setCharacterEncoding("utf-8");
	        String param1 = request.getParameter("id");
	        PrintWriter out = response.getWriter();
	        List<LinkData> list = null;
	        if (param1 == null || param1 ==""){
	            String query = "select from " + LinkData.class.getName() + "where" + param1;
	            try {
	                list = (List<LinkData>)manager.newQuery(query).execute();
	            } catch(JDOObjectNotFoundException e){}
	        } else {
	            try {
	                LinkData data = (LinkData)manager.getObjectById(LinkData.class,Long.parseLong(param1));
	                list = new ArrayList();
	                list.add(data);
	            } catch(JDOObjectNotFoundException e){}
	        }
	        String res = "[";
	        if (list != null){
	            for(LinkData data:list){
	                res += "{id:" + data.getId() + ",name:'" + data.getName() + "',mail:'" +
	                    data.getMail() + "',reserveDate:'" + data.getreserveDate() +
	                    "'},";
	            }
	        }
	        res += "]";
	        out.println(res);
	        manager.close();    
	   
	        //response.sendRedirect("/reservationOK.jsp");
	        //request.setAttribute("reserve", list);
	        // フォワード
	        /*RequestDispatcher dispatcher = request.getRequestDispatcher(
	                "/reservationCheck.jsp");
	        dispatcher.forward(request, response);*/

	    }

	    /**
	     * Handles the HTTP
	     * <code>POST</code> method.
	     *
	     * @param request servlet request
	     * @param response servlet response
	     * @throws ServletException if a servlet-specific error occurs
	     * @throws IOException if an I/O error occurs
	     */
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    /**
	     * Returns a short description of the servlet.
	     *
	     * @return a String containing servlet description
	     */
	    @Override
	    public String getServletInfo() {
	        return "Short description";
	    }// </editor-fold>
	}
