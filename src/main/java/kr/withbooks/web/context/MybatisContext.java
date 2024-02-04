package kr.withbooks.web.context;

import org.apache.ibatis.session.SqlSessionFactory;

import jakarta.servlet.http.HttpServlet;


//test222 
//
public class MybatisContext{
	

	private static SqlSessionFactory sqlSessionFactory;

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public static void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		MybatisContext.sqlSessionFactory = sqlSessionFactory;
	}
	

}
