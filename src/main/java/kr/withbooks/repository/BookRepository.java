package kr.withbooks.repository;

import java.util.List;

import kr.withbooks.entity.Book;

public interface BookRepository {
	
	
// 사용자
	public Book findById(int id);
	public List<Book> findAll();
	
	
//	관리자
	public void save(Book book);
	public void update(Book book);
	public void delete(int id);
}
