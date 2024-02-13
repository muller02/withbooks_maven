package kr.withbooks.web.listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class MybatisContextListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("톰캣이 시작되는겨 ???");
		
		try {
			Class.forName("kr.withbooks.context.MybatisContext");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//주석2
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("톰캣이 꺼지는겨 ???");
	}
	
}
