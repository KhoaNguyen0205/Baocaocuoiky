package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MatchesDAOImpl;
import com.DB.DBConnect;
import com.entity.MatchesDtls;

@WebServlet("/add_matches")
@MultipartConfig
public class MatchesAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String round = req.getParameter("round");
			String time = req.getParameter("time");
			String team1 = req.getParameter("team1");
			String score1 = req.getParameter("score1");
			String score2 = req.getParameter("score2");
			String team2 = req.getParameter("team2");
			
			
			MatchesDtls b = new MatchesDtls(round, time, team1, score1, score2, team2);
			
			MatchesDAOImpl dao = new MatchesDAOImpl(DBConnect.getConn());
			
			boolean f = dao.addMatches(b);
			HttpSession session = req.getSession();
			
			  if(f) {
				 
					session.setAttribute("succMsg", "Matches Add Successfully");
					resp.sendRedirect("admin/add_matches.jsp");
				} else {
					session.setAttribute("failedMsg", "Sothing wrong on Server");
					resp.sendRedirect("admin/add_matches.jsp");
			  }
			
		} catch (Exception e) {
		e.printStackTrace();
		}
	}
  
	
}
