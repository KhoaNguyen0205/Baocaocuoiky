package com.entity;

public class MatchesDtls {

	private int idmatches;
	private String round;
	private String time;
	private String team1;
	private String score1;
	private String score2;
	private String team2;
	
	
	public MatchesDtls() {
		super();
		// TODO Auto-generated constructor stub
	}


	public MatchesDtls(String round, String time,String team1, String score1, String score2, String team2) {
		super();
		this.round = round;
		this.time = time;
		this.team1 = team1;
		this.score1 = score1;
		this.score2 = score2;
		this.team2 = team2;
	}


	public int getIdmatches() {
		return idmatches;
	}


	public void setIdmatches(int idmatches) {
		this.idmatches = idmatches;
	}


	public String getTeam1() {
		return team1;
	}


	public void setTeam1(String team1) {
		this.team1 = team1;
	}


	public String getScore1() {
		return score1;
	}


	public void setScore1(String score1) {
		this.score1 = score1;
	}


	public String getScore2() {
		return score2;
	}


	public void setScore2(String score2) {
		this.score2 = score2;
	}


	public String getTeam2() {
		return team2;
	}


	public void setTeam2(String team2) {
		this.team2 = team2;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getRound() {
		return round;
	}


	public void setRound(String round) {
		this.round = round;
	}


	@Override
	public String toString() {
		return "MatchesDtls [idmatches=" + idmatches + ", round=" + round + ", time=" + time + ", team1=" + team1
				+ ", score1=" + score1 + ", score2=" + score2 + ", team2=" + team2 + "]";
	}


	


	
	

}
