package chobong.frontController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.ModelAndView;
	
public interface Controller {
	// return Type�� ���� ���⼭ path,�̵� �����ؾ���
	// �Ȱ��� ����� ��� �ۼ���
	// ������ ������� Ŭ������ ModelAndView
	ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
