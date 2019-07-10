package chobong.movie.dto;

public class CommentDTO {
	private String commentNum; //댓글번호
	private String memberId;//회원id
	private String commentContent;// 댓글내용
	private String commentDate; //댓글입력날짜
	private String commentBoard; // 리뷰 글 번호

	
		
	public CommentDTO(String commentNum, String memberId, String commentContent,  String commentDate, String commentBoard ) {
		this(commentNum, memberId, commentContent, commentDate);
		this.commentBoard = commentBoard;
	}
	//출력하기 위한 생성자
	public CommentDTO(String commentNum, String memberId, String commentContent, String commentDate) {
		this.commentNum = commentNum;
		this.commentContent = commentContent;
		this.memberId = memberId;
		this.commentDate = commentDate;
	}
	public String getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(String commentNum) {
		this.commentNum = commentNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}	
	public String getCommentBoard() {
		return commentBoard;
	}
	public void setCommentBoard(String commentBoard) {
		this.commentBoard = commentBoard;
	}
	
}
