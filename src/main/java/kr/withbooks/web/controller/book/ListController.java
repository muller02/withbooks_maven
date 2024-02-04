package kr.withbooks.web.controller.book;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.withbooks.web.entity.Book;

import kr.withbooks.web.service.book.BookService;

@WebServlet("/book/list")
public class ListController extends HttpServlet {

	private BookService service;

	public ListController() {
		service = new BookService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<Book> list = new ArrayList<Book>();
		list = service.getList();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/WEB-INF/views/book/list.jsp").forward(req, resp);
	}
}
