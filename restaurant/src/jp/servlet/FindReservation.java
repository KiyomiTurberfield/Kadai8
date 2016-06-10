package jp.servlet;

import java.io.*;
import java.util.*;
 
import javax.jdo.*;
import javax.servlet.http.*;

import model.PMF;
import model.LinkData;

@SuppressWarnings("serial")
public class FindReservation extends HttpServlet {
    public void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws IOException {
    	
        PersistenceManagerFactory factory = PMF.get();
        PersistenceManager manager = factory.getPersistenceManager();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        req.setCharacterEncoding("utf-8");
        String param1 = req.getParameter("find");
        PrintWriter out = resp.getWriter();
        List<LinkData> list = null;
        Query query = manager.newQuery(LinkData.class);
        query.setFilter("reserveDate == findreserveDate");
        //query.setOrdering("datetime desc");
        //findNameはString型だよ
        query.declareParameters("String findreserveDate");
        try {
            list = (List<LinkData>)query.execute(param1);
        } catch(JDOObjectNotFoundException e){}
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
    }
}