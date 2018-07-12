package domain;

public class MemberBean {
	private String memberId,TeamId,name,ssn,roll,pass;

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getTeamId() {
		return TeamId;
	}

	public void setTeamId(String teamId) {
		TeamId = teamId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getRoll() {
		return roll;
	}

	public void setRoll(String roll) {
		this.roll = roll;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "MemberBean [memberId=" + memberId + ", TeamId=" + TeamId + ", name=" + name + ", ssn=" + ssn + ", roll="
				+ roll + ", pass=" + pass + "]";
	}
	
	
	
}
