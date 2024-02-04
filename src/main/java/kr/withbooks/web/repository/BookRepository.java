package kr.withbooks.web.repository;

import java.util.List;

import kr.withbooks.web.entity.Book;

public interface BookRepository {
	
	
// 사용자
	public Book findById(int id);
	public List<Book> findAll();
	
	
//	관리자
	public void save(Book book);
	public void update(Book book);
	public void delete(int id);
}
