package chobong.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.frontController.Controller;
import chobong.frontController.ModelAndView;

public class InsertController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
/*
		String url="errorView/error.jsp";
		ModelAndView mv = new ModelAndView();
		
		ServletContext application = request.getServletContext();
		String saveDir = application.getRealPath("/save");
		
		int maxSize = 1024*1024*100; //100M
		String encoding = "UTF-8"; 
		
		// post����� mutipart ��û�ޱ�
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding,
									new DefaultFileRenamePolicy() );
		
		// �Ѿ���� �� �ޱ�
		String modelNum = m.getParameter("model_num");
		String modelName = m.getParameter("model_name");
		String price = m.getParameter("price");
		String description = m.getParameter("description");
		String password = m.getParameter("password");
		
		// description �κп� tag( < )�� ����( &lt; )�� ����
		description = description.replace("<", "&lt;");
		
		
		//System.out.println( modelNum + " : " + modelName + " : " + price + " : " + description + " : " + password);
		Electronics elec = new Electronics(modelNum, modelName, 
										Integer.parseInt(price), description, password );
		
		// ���� ����÷�ΰ� �Ǿ��ٸ�...�����̸�, ����ũ�⸦ ����
		// input�� file Ÿ���� getParameter�� �ƴ� getFilesystemName���� ������ �� ����
		if( m.getFilesystemName("file") != null ) { // getParameter("file")
			// ���� �̸�, ũ��
			elec.setFname( m.getFilesystemName("file") );
			elec.setFsize( (int)m.getFile("file").length()  );
			System.out.println( "�����̸� : " + elec.getFname() + " , ũ�� : " + elec.getFsize() );
		}
		// ���� ȣ��
		try {
			ElectronicsService.insert(elec);
			mv.setPath("elec");
			mv.setRedirect(true);
			
		} catch (SQLException e) {
			request.setAttribute( "errorMsg", e.getMessage() );
			mv.setPath(url);
		}*/
		return null;
	}
}
