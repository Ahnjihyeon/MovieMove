package chobong.frontController;

/** Ŭ���̾�Ʈ�� ��������
    �̵��� url�ּҿ� �̵������ �����ϴ� Ŭ���� */
public class ModelAndView {
	private String path; // ���� �� ������ �̸�
	private boolean isRedirect; // �̵���� ( false�̸� forward, true�̸� redirect )
	
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {	// boolean���� ��� getter�� get�� �ƴ� ����
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) { // setter�� ���, is ���� set���� �Ǿ�����
		this.isRedirect = isRedirect;
	}
}
