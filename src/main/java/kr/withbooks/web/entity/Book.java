package kr.withbooks.web.entity;

import java.util.Date;

public class Book {

	private int id;
	private String title;
	private String img;
	private String author;
	private String isbn;
	private String publisher;
	private Date publicationDate;
	private String intro;
	private int price;
	private String page;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Book(int id, String title, String img, String author, String isbn, String publisher, Date publicationDate,
			String intro, int price, String page) {
		super();
		this.id = id;
		this.title = title;
		this.img = img;
		this.author = author;
		this.isbn = isbn;
		this.publisher = publisher;
		this.publicationDate = publicationDate;
		this.intro = intro;
		this.price = price;
		this.page = page;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", img=" + img + ", author=" + author + ", isbn=" + isbn
				+ ", publisher=" + publisher + ", publicationDate=" + publicationDate + ", intro=" + intro + ", price="
				+ price + ", page=" + page + "]";
	}
	
	
	
	
	

}
