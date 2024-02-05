package kr.withbooks.web.context;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import jakarta.servlet.http.HttpServlet;


//test222
public class MybatisContext{
	

	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		System.out.println("스태틱 실행");
		try {
			String resource= "mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			MybatisContext.setSqlSessionFactory(sqlSessionFactory);
		} catch (IOException e) {
			System.out.print("예외발생");
			e.printStackTrace();
		}
		
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public static void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		MybatisContext.sqlSessionFactory = sqlSessionFactory;
	}
	

}
