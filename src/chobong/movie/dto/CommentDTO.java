package chobong.movie.dto;

public class CommentDTO {
	private int commentNum; //댓글번호
	private int memberId; //회원id
	private String commentContent;// 댓글내용
	private String commentDate; //댓글입력날짜
	private int commentBoard; // 리뷰 글 번호
	
	
	
	
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
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
	public int getCommentBoard() {
		return commentBoard;
	}
	public void setCommentBoard(int commentBoard) {
		this.commentBoard = commentBoard;
	}
	
}
