package chobong.movie.dto;

public class CommentDTO {
	private int commentNum; //��۹�ȣ
	private int memberId; //ȸ��id
	private String commentContent;// ��۳���
	private String commentDate; //����Է³�¥
	private int commentBoard; // ���� �� ��ȣ
	
	
	
	
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
