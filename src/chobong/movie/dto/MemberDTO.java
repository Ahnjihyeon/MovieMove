package chobong.movie.dto;

public class MemberDTO {
	private String memberId;
	private String memberPwd;
	private String memberEmail;
	private String memberName;
	private String memberNickname;
	private int memberAge;
	private String memberDate;
	
	
	
	
	//Constructor	
	
	public MemberDTO(String memberId, String memberPwd, String memberEmail, String memberName, String memberNickname,
			int memberAge, String memberDate) {
		super();
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
		this.memberNickname = memberNickname;
		this.memberAge = memberAge;
		this.memberDate = memberDate;
	}

	 
	//getXxx, setXxx
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public int getMemberAge() {
		return memberAge;
	}
	public void setMemberAge(int memberAge) {
		this.memberAge = memberAge;
	}
	public String getMemberDate() {
		return memberDate;
	}
	public void setMemberDate(String memberDate) {
		this.memberDate = memberDate;
	}

	
}
