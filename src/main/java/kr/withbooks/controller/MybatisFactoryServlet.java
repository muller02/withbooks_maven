package kr.withbooks.controller;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import kr.withbooks.context.MybatisContext;


//@WebServlet(urlPatterns = {"/"}, loadOnStartup = 1)
public class MybatisFactoryServlet extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		
		
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

}
