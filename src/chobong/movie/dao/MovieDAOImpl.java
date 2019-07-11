package chobong.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chobong.movie.dto.MovieDTO;
import chobong.util.DbUtil;

public class MovieDAOImpl implements MovieDAO {	
	//영화 키워드 검색 출력
	@Override
	public List<MovieDTO> selectByMovieTitle(String movieTitle) {
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql="select * from Movie where movie_Title like ?";
			
			List<MovieDTO> movielist = new ArrayList<>();
			
			try {
				con = DbUtil.getConnection();
				ps = con.prepareStatement(sql);
				ps.setString(1, "%"+movieTitle.trim()+"%");
				
				rs = ps.executeQuery();
				while( rs.next() ) {
					MovieDTO movieDTO = new MovieDTO(rs.getString(1), rs.getString(2), rs.getInt(3),
										rs.getInt(4), rs.getString(5), rs.getString(6) );
					movielist.add(movieDTO);
				}
				System.out.println(movielist);
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DbUtil.dbClose(rs, ps, con);
			}
			return movielist;

			
	}

}
