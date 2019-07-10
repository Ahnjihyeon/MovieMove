package chobong.movie.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import chobong.util.DbUtil2;



public class APItoDB {

	
	
    public static void main(String[] args) throws SQLException {
    	getData();
    	
    }
    
    public static String naverMovieApi() {
    	
    	String clientId = "f0OSF1DeKDbYg43eK8qe";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
        String clientSecret = "TnpvCehwbj";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
        int display=10; //�˻� ��� ��� �Ǽ� (�⺻�� 10, �ִ� 100)
        int start=1;
        String genre="11";  //genre 11 �ڹ̵�
        int yearfrom=2011; //��ȭ�� ���۳⵵(�ּ�)
        int yearto=2019; //��ȭ�� ���۳⵵(�ִ�)
        
        StringBuilder sb=null;
        String result=null;
        
        try {
            String keyword = URLEncoder.encode("�ŵ�����","UTF-8"); //�������� ���� ���ڵ� ex)�˶��->%EC%95%8C%EB%9D%BC%EB%94%98
           
            String apiURL = "https://openapi.naver.com/v1/search/movie.json?query="+keyword
            				+"&display="+display+"&start="+start+"&genre="+genre+"&yearfrom="+yearfrom+"&yearto="+yearto; // json ���
            //String apiURL = "https://openapi.naver.com/v1/search/movie.xml?query="+ searchText; // xml ���
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();            
            
            BufferedReader br;
            if(responseCode==200) { // ���� ȣ��
                br = new BufferedReader(new InputStreamReader(con.getInputStream() , "UTF-8"));
            } else {  // ���� �߻�
                br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "UTF-8"));
            }
            
            sb = new StringBuilder();
            String line;
            
            while ((line = br.readLine())!=null) {
            	sb.append(line+"\n");
            }
            
            br.close();
            con.disconnect();
            
            result = sb.toString();
            System.out.println("-------------naverMovieApi()���� json ���� -----------");
            System.out.println(result);
                       
        } catch (Exception e) {
            System.out.println(e);
        }
        return result;
    }
    
    /**
     * naverMovieApi() ���� ���� json ������� ������ �����ϴ� �޼ҵ�
     * */
    
    static JSONArray array;
    static JSONObject row;
    public static void getData() {  
    	Connection con = null;
 		PreparedStatement ps = null;
 		
    	try {
    	System.out.println("-------------json���� �ܾ� ����(parsing)-----------");
    	
    	JSONParser jsonParser = new JSONParser();
        JSONObject jsonObject = (JSONObject)jsonParser.parse(naverMovieApi());
        
        //System.out.println(jsonObject.toString());
        //JSONObject json = (JSONObject)jsonObject.get("total");
        //System.out.println(jsonObject.get("total"));
        String title;
        String year;
        String starpoint;
        String img;
        array = (JSONArray)jsonObject.get("items");
        for(int i=0; i<array.size(); i++){
            row = (JSONObject)array.get(i);
            title = (String)row.get("title"); //MOVIE_TITLE
            title = title.replace("<b>", "");
            title = title.replace("</b>", "");
            year = (String)row.get("pubDate"); //MOVIE_YEAR
            starpoint = (String)row.get("userRating"); //MOVIE_STARPOINT
            img = (String)row.get("image"); // MOVIE_IMG
            
            System.out.println(title +" | "+year+" | "+starpoint +" | "+img );
            
            System.out.println("-------------Movie table�� update-----------"); 
            String sql = "insert into movie(movie_code, movie_title, movie_year, movie_starpoint, movie_img) values (?,?,?,?,?)";
			con = DbUtil2.getConnection();
			ps = con.prepareStatement(sql);
            
			ps.setString(1, "MV_"+i);
			ps.setString(2, title);
			ps.setString(3, year);
			ps.setString(4, starpoint);
			ps.setString(5, img);
            
			int result = ps.executeUpdate();
			System.out.println("DB���� "+i+"��°: "+result);
                        
        	}//for�� ��
        
    	}catch (Exception e) {
			e.printStackTrace();
    	}finally {
    		DbUtil2.dbClose(con, ps);
		}
    }
    
    
    
}