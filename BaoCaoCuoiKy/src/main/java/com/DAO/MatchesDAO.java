package com.DAO;

import java.util.List;

import com.entity.MatchesDtls;

public interface MatchesDAO {
	
	public boolean addMatches (MatchesDtls b);
	
	public List<MatchesDtls> getAllMatches();
	
	public MatchesDtls getMatchesById(int id);
	
	public boolean updateMatches (MatchesDtls b);
	
	public List<MatchesDtls> getMatchesBySearch (String ch);
	

}
