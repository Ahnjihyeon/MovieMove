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
		
		// post방식의 mutipart 요청받기
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding,
									new DefaultFileRenamePolicy() );
		
		// 넘어오는 값 받기
		String modelNum = m.getParameter("model_num");
		String modelName = m.getParameter("model_name");
		String price = m.getParameter("price");
		String description = m.getParameter("description");
		String password = m.getParameter("password");
		
		// description 부분에 tag( < )를 문자( &lt; )로 변경
		description = description.replace("<", "&lt;");
		
		
		//System.out.println( modelNum + " : " + modelName + " : " + price + " : " + description + " : " + password);
		Electronics elec = new Electronics(modelNum, modelName, 
										Integer.parseInt(price), description, password );
		
		// 만약 파일첨부가 되었다면...파일이름, 파일크기를 저장
		// input의 file 타입은 getParameter가 아닌 getFilesystemName으로 가져올 수 있음
		if( m.getFilesystemName("file") != null ) { // getParameter("file")
			// 파일 이름, 크기
			elec.setFname( m.getFilesystemName("file") );
			elec.setFsize( (int)m.getFile("file").length()  );
			System.out.println( "파일이름 : " + elec.getFname() + " , 크기 : " + elec.getFsize() );
		}
		// 서비스 호출
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
