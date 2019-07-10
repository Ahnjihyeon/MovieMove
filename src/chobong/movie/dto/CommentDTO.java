package chobong.movie.dto;

public class CommentDTO {
	private int commentNum; //��۹�ȣ
	private String commentBoard; // ���� �� ��ȣ
	private String memberId; //ȸ��id
	private String commentContent;// ��۳���
	private String commentDate; //����Է³�¥
	
		
	public CommentDTO(int commentNum, String commentBoard, String memberId, String commentContent, String commentDate) {
		super();
		this.commentNum = commentNum;
		this.commentBoard = commentBoard;
		this.memberId = memberId;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
	}
	//����ϱ� ���� ������
	public CommentDTO(String commentContent, String memberId, String commentDate) {
		this.commentContent = commentContent;
		this.memberId = memberId;
		this.commentDate = commentDate;		
	}
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
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
