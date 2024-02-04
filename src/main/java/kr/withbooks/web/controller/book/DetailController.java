package kr.withbooks.web.controller.book;


import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.withbooks.web.entity.Book;

import kr.withbooks.web.service.book.BookService;

@WebServlet("/book/detail")
public class DetailController extends HttpServlet {

	private BookService service;

	public DetailController() {
		service = new BookService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		Book book =  service.get(id);
		req.setAttribute("book", book);
		req.getRequestDispatcher("/WEB-INF/views/book/detail.jsp").forward(req, resp);
	}
}
