package chobong.movie.dto;

public class LikeDTO {
	private String memberId;
	private String reviewId;
	private String likeCheckCount;	

	public LikeDTO(String memberId, String reviewId, String likeCheckCount) {
		super();
		this.memberId = memberId;
		this.reviewId = reviewId;
		this.likeCheckCount = likeCheckCount;
	}
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getReviewId() {
		return reviewId;
	}
	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}
	public String getLikeCheckCount() {
		return likeCheckCount;
	}
	public void setLikeCheckCount(String likeCheckCount) {
		this.likeCheckCount = likeCheckCount;
	}
	
	
}
