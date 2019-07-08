package chobong.movie.dto;

public class MovieMoveDTO {
	private String memberid;
	private String memberPwd;
	private String email;
	private String name;
	private String nickname;
	private int age;
	private String enrollday;
	
	private String reviewid;
	private String subject;
	private String content;
	private String writeday;
	private String starPoint;
	private String readnum;
	private String reviewPwd;
	
	
	public MovieMoveDTO() {}
	
	//리뷰 등록할 때
	public MovieMoveDTO(String nickname, String reviewid, String subject, String content, String writeday,
			String starPoint, String readnum, String reviewPwd) {
		super();
		this.nickname = nickname;
		this.reviewid = reviewid;
		this.subject = subject;
		this.content = content;
		this.writeday = writeday;
		this.starPoint = starPoint;
		this.readnum = readnum;
		this.reviewPwd = reviewPwd;
	}
	
	
	//리뷰 수정할 때
	public MovieMoveDTO(String reviewid, String subject, String content, String starPoint, String reviewPwd) {
		super();
		this.reviewid = reviewid;
		this.subject = subject;
		this.content = content;
		this.starPoint = starPoint;
		this.reviewPwd = reviewPwd;
	}
	
	
	//리뷰 삭제할때..
	public MovieMoveDTO(String reviewid,String reviewPwd ) {
		this.reviewid = reviewid;
		this.reviewPwd = reviewPwd;
	}
	
		

	///SetXxx, GetXxx
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEnrollday() {
		return enrollday;
	}
	public void setEnrollday(String enrollday) {
		this.enrollday = enrollday;
	}
	public String getReviewid() {
		return reviewid;
	}
	public void setReviewid(String reviewid) {
		this.reviewid = reviewid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	public String getStarPoint() {
		return starPoint;
	}
	public void setStarPoint(String starPoint) {
		this.starPoint = starPoint;
	}
	public String getReadnum() {
		return readnum;
	}
	public void setReadnum(String readnum) {
		this.readnum = readnum;
	}
	public String getReviewPwd() {
		return reviewPwd;
	}
	public void setReviewPwd(String reviewPwd) {
		this.reviewPwd = reviewPwd;
	}

	
	
	
	
}
