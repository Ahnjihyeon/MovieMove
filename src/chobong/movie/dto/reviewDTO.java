package chobong.movie.dto;

public class reviewDTO {
	
	private String reviewId;
	private String reviewSubject;
	private String reviewContent;
	private String reviewWriteday;
	private String reviewStarPoint;
	private String reviewCount;
	private String reviewPwd;
	
	
	
	//Constructor
	
	public reviewDTO(String reviewId, String reviewSubject, String reviewContent, String reviewWriteday,
			String reviewStarPoint, String reviewCount, String reviewPwd) {
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
		this.reviewWriteday = reviewWriteday;
	}
	public String getReviewStarPoint() {
		return reviewStarPoint;
	}
	public void setReviewStarPoint(String reviewStarPoint) {
		this.reviewStarPoint = reviewStarPoint;
	}
	public String getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(String reviewCount) {
		this.reviewCount = reviewCount;
	}
	public String getReviewPwd() {
		return reviewPwd;
	}
	public void setReviewPwd(String reviewPwd) {
		this.reviewPwd = reviewPwd;
	}
	
	
	
	
	
}
