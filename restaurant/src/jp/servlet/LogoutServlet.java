package jp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;
 
import com.google.appengine.api.users.*;
 
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	 
    	 resp.setCharacterEncoding("UTF-8");
    	 HttpSession session = req.getSession(false);
    	 if(session != null) session.invalidate();
    	 
        UserService service = UserServiceFactory.getUserService();
        String url = req.getRequestURI();
        String logouturl = service.createLogoutURL("/index.jsp");
        resp.sendRedirect(logouturl);
    }
     
}