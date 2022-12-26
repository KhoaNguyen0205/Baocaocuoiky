package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setPassword(password);
			HttpSession session=req.getSession();
			
			if (check != null) 
			{
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				
				Boolean f2=dao.checkUser(email);
				if(f2)
				{
					boolean f = dao.userRegister(us);
					
					if(f) 
					{
					
						session.setAttribute("succMsg", "Registration Successfully..");
						resp.sendRedirect("register.jsp");
					}else {

						session.setAttribute("failedMsg", "Something wrong on Server..");
						resp.sendRedirect("register.jsp");
					}
				}else {

					session.setAttribute("failedMsg", "User Already Exits try another Email id");
					resp.sendRedirect("register.jsp");
				}
				
				
			}else {
				session.setAttribute("failedMsg", "Please Check Agree & Terms Condition");
				resp.sendRedirect("register.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}