package chobong.listener;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import chobong.frontController.Controller;

@WebListener
public class HandlerMappingListener implements ServletContextListener {
    public void contextDestroyed(ServletContextEvent arg0)  {   }
    
    public void contextInitialized(ServletContextEvent e )  { 
    	
    	// 서버가 start될 때 사용될 객체를 생성해서 Map저장
    	Map<String, Controller> map = new HashMap<>();
    	
    	// 1. properties파일 로딩 				
    	// 경로를 xml에서 관리 ( 이닛파람 이용 )
    	ServletContext application = e.getServletContext();
    	String fileName = application.getInitParameter("fileName"); // "/kosta/util/listener/ActionMapping"
    	//System.out.println( "fileName : " + fileName );
    	
    	// xml경로를 넣어서 properties 파일을 읽음
    	ResourceBundle rb = ResourceBundle.getBundle( fileName );
    	
    	// 2. key와 value를 분리하면서 value를 객체로 만들어 Map저장
    	// 읽은 properties를 key value로 잘 나오는지 출력
    	Iterator<String> it = rb.keySet().iterator();
    	while( it.hasNext() ) {
    		String key = it.next();
    		String value = rb.getString(key);
    		//System.out.println( key + " = " + value );
    		
    		// value값이 String(문자열)을 객체로 변환 
    		Controller classObj;
			try {
				classObj = (Controller)Class.forName(value).newInstance();
				System.out.println( classObj );
				
				map.put(key, classObj); 
			}  catch ( Exception ex ) {
				ex.printStackTrace();
			}
    	} // while문 끝
    	
    	application.setAttribute( "map", map );
    }
}
