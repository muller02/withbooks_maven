package kr.withbooks.controller.admin;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.withbooks.service.admin.AdminService;

@WebServlet("/admin/book/delete")
public class DeleteServlet extends HttpServlet {
	private AdminService service;
	
	public DeleteServlet() {
			service = new AdminService();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	int id = Integer.parseInt(req.getParameter("id")) ;
	
	service.deleteBook(id);
	
	resp.sendRedirect("/admin/book/index");
		
	}

}
