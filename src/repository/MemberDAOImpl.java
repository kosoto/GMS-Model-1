package repository;

import java.sql.*;
import java.util.*;
import domain.*;
import enums.Vendor;
import factory.*;
import pool.DBConstant;

public class MemberDAOImpl implements MemberDAO{
	private static MemberDAO instance = new MemberDAOImpl();

	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {
	  /*stmt = DataBaseFactory.createDataBase(
		Vendor.ORACLE,
		DBConstant.USER_NAME,
		DBConstant.PASSWORD)
		.getConnection()
		.createStatement();
		*/
	}
	@Override
	public MemberBean insertMember(MemberBean member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberBean> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberBean> readSome(String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean readOne(String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public MemberBean login(MemberBean member) {
		MemberBean mem = null;
		try {
			ResultSet rs = DataBaseFactory.createDataBase(
					Vendor.ORACLE,
					DBConstant.USER_NAME,
					DBConstant.PASSWORD)
					.getConnection()
					.createStatement().executeQuery(String.format(
					"SELECT MEM_ID MEMID, "
							+" TEAM_ID TEAMID, "
							+" NAME, "
							+" SSN, "
							+" ROLL, "
							+" PASSWORD "
							+" FROM MEMBER "
							+" WHERE MEM_ID LIKE '%s' "
							+" AND PASSWORD LIKE '%s' "
							,member.getMemberId(),member.getPass()));			
			while(rs.next()) {
				mem = new MemberBean();
				mem.setMemberId(rs.getString("MEMID"));
				mem.setTeamId(rs.getString("TEAMID"));
				mem.setName(rs.getString("NAME"));
				mem.setSsn(rs.getString("SSN"));
				mem.setRoll(rs.getString("ROLL"));
			}				
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return mem;
	}
	@Override
	public String join(MemberBean member) {
		String result = "";
		try {	
			Statement stmt = DataBaseFactory.createDataBase(
					Vendor.ORACLE,
					DBConstant.USER_NAME,
					DBConstant.PASSWORD)
					.getConnection()
					.createStatement();
			ResultSet rs = stmt.executeQuery(String.format(
					"SELECT MEM_ID MEMID "+
					"FROM MEMBER "+
					"WHERE MEM_ID LIKE '%s'"
					, member.getMemberId()));
			if(rs.next()) {
				//아이디중복
				result ="아이디가 이미 있습니다.";
			}else {				
				stmt.execute(
						String.format(
						"INSERT INTO MEMBER "
						+ "(MEM_ID, NAME, SSN, PASSWORD, AGE) "
						+ "VALUES "
						+ "('%s','%s','%s','%s','%d')", 
						member.getMemberId(),
						member.getName(),
						member.getSsn(),
						member.getPass(),
						(119-Integer.parseInt(member.getSsn().substring(0, 2)))
						)
				);
				result = "등록 성공";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}

}
