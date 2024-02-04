package kr.withbooks.web.controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.withbooks.web.entity.Book;
import kr.withbooks.web.service.admin.AdminService;



@WebServlet("/admin/book/index")
public class IndexServlet extends HttpServlet{
	
	private AdminService service;
	
	public IndexServlet() {
		service = new AdminService();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Book> list = service.getList();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/WEB-INF/views/admin/book/index.jsp").forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}

}
