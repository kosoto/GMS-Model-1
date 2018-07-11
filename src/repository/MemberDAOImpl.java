package repository;

import java.sql.*;
import java.util.*;
import domain.*;

public class MemberDAOImpl implements MemberDAO{
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {}
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
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
					"kstad",
					"1234"
					);
			Statement stmt = conn.createStatement();
			String sql = String.format(
					"SELECT MEM_ID MEMID, "
							+" TEAM_ID TEAMID, "
							+" NAME, "
							+" AGE, "
							+" ROLL, "
							+" PASSWORD "
							+" FROM MEMBER "
							+" WHERE MEM_ID LIKE '%s' "
							+" AND PASSWORD LIKE '%s' "
							,member.getMemberId(),member.getPass());
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				mem = new MemberBean();
				mem.setMemberId(rs.getString("MEMID"));
				mem.setTeamId(rs.getString("TEAMID"));
				mem.setName(rs.getString("NAME"));
				mem.setAge(rs.getString("AGE"));
				mem.setRoll(rs.getString("ROLL"));
			}	
			
			
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return mem;
	}

}
