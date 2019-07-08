package chobong.movie.dto;

public class ReviewDTO {
	
	private String reviewId;
	private String memberId;
	private String movieCode;
	private String reviewSubject;
	private String reviewContent;
	private String reviewWriteday;
	private int reviewStarPoint;
	private int reviewCount;
	private String reviewPwd;
	
	//Constructor
	public ReviewDTO() { }

	public ReviewDTO(String reviewId, String reviewSubject, String reviewContent, String reviewWriteday,
			int reviewStarPoint, int reviewCount, String reviewPwd) {
		super();
		this.reviewId = reviewId;
		this.reviewSubject = reviewSubject;
		this.reviewContent = reviewContent;
		this.reviewWriteday = reviewWriteday;
		this.reviewStarPoint = reviewStarPoint;
		this.reviewCount = reviewCount;
		this.reviewPwd = reviewPwd;
	}
	
	//getXxx, setXxx
	public String getReviewId() {
		return reviewId;
	}
	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}
	public String getReviewSubject() {
		return reviewSubject;
	}
	public void setReviewSubject(String reviewSubject) {
		this.reviewSubject = reviewSubject;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getReviewWriteday() {
		return reviewWriteday;
	}
	public void setReviewWriteday(String reviewWriteday) {
		this.reviewWriteday  = reviewWriteday;
	}
	public int getReviewStarPoint() {
		return reviewStarPoint;
	}
	public void setReviewStarPoint(int reviewStarPoint) {
		this.reviewStarPoint = reviewStarPoint;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public String getReviewPwd() {
		return reviewPwd;
	}
	public void setReviewPwd(String reviewPwd) {
		this.reviewPwd = reviewPwd;
	}
	
	
}
