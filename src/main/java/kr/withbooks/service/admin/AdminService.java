package kr.withbooks.service.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.withbooks.context.MybatisContext;
import kr.withbooks.entity.Book;
import kr.withbooks.repository.BookRepository;

public class AdminService {

	private BookRepository bookRepository;
	private 	SqlSession session;

	public AdminService() {
		SqlSessionFactory factory = MybatisContext.getSqlSessionFactory();
		 session = factory.openSession();
		bookRepository = session.getMapper(BookRepository.class);
		System.out.print("세션접속완료");

	}

	public List<Book> getList() {
		List<Book> list = bookRepository.findAll();

		return list;
	}

	public Book get(int id) {

		Book book = bookRepository.findById(id);

		return book;

	}

	public void edit(Book book) {
		System.out.print(book.toString());
		bookRepository.update(book);
		session.commit();
	}

	public void regBook(Book book) {

		bookRepository.save(book);
		session.commit();
	}
	
	public void deleteBook(int id) {
		System.out.println(id);
		bookRepository.delete(id);
		session.commit();
	}

}
