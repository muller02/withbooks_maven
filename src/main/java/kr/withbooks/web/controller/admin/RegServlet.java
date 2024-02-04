package kr.withbooks.web.controller.admin;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.withbooks.web.entity.Book;
import kr.withbooks.web.service.admin.AdminService;

@WebServlet("/admin/book/reg")
public class RegServlet extends HttpServlet {

	private AdminService service;
	
	public RegServlet() {
		service = new AdminService();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.getRequestDispatcher("/WEB-INF/views/admin/book/reg.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String title = req.getParameter("title");
		String img = req.getParameter("img");
		String author = req.getParameter("author");
		String isbn = req.getParameter("isbn");
		String publisher = req.getParameter("publisher");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		
		String publicationdate_ = req.getParameter("publicationdate");
		Date publicationdate__ = null;
		java.sql.Date 	publicationdate = null;
		try {
			publicationdate__ = formatter.parse(publicationdate_);
		publicationdate = new java.sql.Date(publicationdate__.getTime()); 
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		String intro = req.getParameter("intro");
		int price = Integer.parseInt(req.getParameter("price"));
		String page = req.getParameter("page");

		Book book = new Book(id, title, img, author, isbn, publisher, publicationdate, intro, price, page);
				
		service.regBook(book);
		req.setAttribute("book", book);
		resp.sendRedirect("/book/list");
	}

}
