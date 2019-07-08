package chobong.frontController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.ModelAndView;
	
public interface Controller {
	// return Type에 따라서 여기서 path,이동 지정해야함
	// 똑같은 기능이 계속 작성됨
	// 리턴을 담당해줄 클래스가 ModelAndView
	ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
