package chobong.review.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chobong.movie.dto.ReviewDTO;
import chobong.movie.service.ReviewService;
import net.sf.json.JSONArray;
@WebServlet("/ReviewUpdate")
public class ReviewUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("리뷰 업데이트 에이작스 호출 완료");
	
		// 제목 평점 내용 수정  
		String reviewId = request.getParameter("reviewId");
		String reviewSubject = request.getParameter("reviewSubject");
		String reviewStarPoint = request.getParameter("reviewStarPoint");
		String reviewContent = request.getParameter("reviewContent");
	
		String reviewPwd = request.getParameter("reviewPwd");
		System.out.println("update컨트롤러 = " + reviewId +" : "+ reviewSubject+" : "+reviewStarPoint+" : "+reviewContent);
	
	
		ReviewDTO upReviewDTO = new ReviewDTO(reviewId, null, null, reviewSubject, reviewContent
															, null, Integer.parseInt(reviewStarPoint), 0, null);
		JSONArray jsonDTO = null;
		try {
			int result = ReviewService.update(upReviewDTO, reviewPwd);
			System.out.println("업데이트 결과 = " + result );
			if( result>0 ) {
				
				ReviewDTO UpdateReviewDTO = ReviewService.selectByReviewId(reviewId);
				
				System.out.println("UpdateReviewDTO =" +UpdateReviewDTO.getReviewContent()  );
				
				
				//request.setAttribute("UpdateReviewDTO", UpdateReviewDTO );
				 jsonDTO = JSONArray.fromObject(UpdateReviewDTO);
				 System.out.println(jsonDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println( jsonDTO );
	}
}
