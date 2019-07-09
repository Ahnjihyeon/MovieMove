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
    	
    	// ������ start�� �� ���� ��ü�� �����ؼ� Map����
    	Map<String, Controller> map = new HashMap<>();
    	
    	// 1. properties���� �ε� 				
    	// ��θ� xml���� ���� ( �̴��Ķ� �̿� )
    	ServletContext application = e.getServletContext();
    	String fileName = application.getInitParameter("fileName"); // "/kosta/util/listener/ActionMapping"
    	//System.out.println( "fileName : " + fileName );
    	
    	// xml��θ� �־ properties ������ ����
    	ResourceBundle rb = ResourceBundle.getBundle( fileName );
    	
    	// 2. key�� value�� �и��ϸ鼭 value�� ��ü�� ����� Map����
    	// ���� properties�� key value�� �� �������� ���
    	Iterator<String> it = rb.keySet().iterator();
    	while( it.hasNext() ) {
    		String key = it.next();
    		String value = rb.getString(key);
    		//System.out.println( key + " = " + value );
    		
    		// value���� String(���ڿ�)�� ��ü�� ��ȯ 
    		Controller classObj;
			try {
				classObj = (Controller)Class.forName(value).newInstance();
				System.out.println( classObj );
				
				map.put(key, classObj); 
			}  catch ( Exception ex ) {
				ex.printStackTrace();
			}
    	} // while�� ��
    	
    	application.setAttribute( "map", map );
    }
}
