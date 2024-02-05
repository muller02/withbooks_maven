package kr.withbooks.service.book;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.withbooks.context.MybatisContext;
import kr.withbooks.entity.Book;
import kr.withbooks.repository.BookRepository;

public class BookService {
	private BookRepository repository;
	


	public BookService() {
		SqlSessionFactory factory = MybatisContext.getSqlSessionFactory();
		SqlSession session = factory.openSession();
		repository = session.getMapper(BookRepository.class);
		
	}
	public Book get(int id) {

		return repository.findById(id);
	}

	
	
	
	public List<Book> getList() {
	
		return repository.findAll();
	}
}
