package chobong.frontController;

/** 클라이언트에 응답전에
    이동할 url주소와 이동방식을 관리하는 클래스 */
public class ModelAndView {
	private String path; // 최종 뷰 페이지 이름
	private boolean isRedirect; // 이동방식 ( false이면 forward, true이면 redirect )
	
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {	// boolean형의 경우 getter는 get이 아닌 형태
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) { // setter의 경우, is 빼고 set으로 되어있음
		this.isRedirect = isRedirect;
	}
}
