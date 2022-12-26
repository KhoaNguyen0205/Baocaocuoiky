package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.MatchesDtls;

public class MatchesDAOImpl implements MatchesDAO {

	private Connection conn;

	public MatchesDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean addMatches(MatchesDtls b) {
		boolean f=false;
		try {
			String sql = "insert into matches_dtls(round,time,team1,team2) values (?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, b.getRound());
			ps.setString(2, b.getTime());
			ps.setString(3, b.getTeam1());
			ps.setString(4, b.getTeam2());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<MatchesDtls> getAllMatches() {
	
		List<MatchesDtls> list = new ArrayList<MatchesDtls>();
		
		MatchesDtls b = null;
		
		try {
			String sql ="select * from matches_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b=new MatchesDtls();
				b.setIdmatches(rs.getInt(1));
				b.setRound(rs.getString(2));
				b.setTime(rs.getString(3));
				b.setTeam1(rs.getString(4));
				b.setScore1(rs.getString(5));
				b.setScore2(rs.getString(6));
				b.setTeam2(rs.getString(7));
			    list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	

	@Override
	public MatchesDtls getMatchesById(int id) {
	   MatchesDtls b = null ;
	   
	   try {
		String sql ="select* from matches_dtls where idmatches=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs= ps.executeQuery();
		
		while(rs.next()) {
			b = new MatchesDtls();
			b.setIdmatches(rs.getInt(1));
			b.setRound(rs.getString(2));
			b.setTime(rs.getString(3));
			b.setTeam1(rs.getString(4));
			b.setScore1(rs.getString(5));
			b.setScore2(rs.getString(6));
			b.setTeam2(rs.getString(7));
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	   return b;
	}

	@Override
	public boolean updateMatches(MatchesDtls b) {
		boolean f= false;
		try {
			String sql = "update matches_dtls set score1=? , score2=?   where idmatches=? ";
			PreparedStatement ps =conn.prepareStatement(sql);
			
			ps.setString(1, b.getScore1());
			ps.setString(2, b.getScore2());
            ps.setInt(3, b.getIdmatches());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<MatchesDtls> getMatchesBySearch(String ch) {
		List<MatchesDtls> list = new ArrayList<MatchesDtls>();
		MatchesDtls b = null;
		
		try {
			String sql ="select * from matches_dtls where team1 like ? or team2 like ? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+ch+"%");
			ps.setString(2, "%"+ch+"%");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b = new MatchesDtls();
				b.setIdmatches(rs.getInt(1));
				b.setRound(rs.getString(2));
				b.setTime(rs.getString(3));
				b.setTeam1(rs.getString(4));
				b.setScore1(rs.getString(5));
				b.setScore2(rs.getString(6));
				b.setTeam2(rs.getString(7));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();		
		}
		return list;
	}


	
	
}
