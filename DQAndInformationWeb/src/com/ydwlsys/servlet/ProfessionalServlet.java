package com.ydwlsys.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.HttpServer;
import com.ydwlsys.dao.IProfessionalDao;
import com.ydwlsys.dao.impl.ProfessionalDaoImpl;
import com.ydwlsys.entity.Professional;
import com.ydwlsys.service.IProfessionalService;
import com.ydwlsys.service.impl.ProfessionalServiceImpl;

@WebServlet("/ProfessionalServlet")
public class ProfessionalServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generadoPost(req, resp);
		String method = req.getParameter("method");
		if (method.equals("queryById")) {
			queryById(req, resp);
		}
	}

	private void queryById(HttpServletRequest req, HttpServletResponse resp) {
		try {

			String cid = req.getParameter("cid");
			System.out.println(cid);
			IProfessionalService service = new ProfessionalServiceImpl();

			List<Professional> list = service.queryByID(cid);
			System.out.println(list.get(0).getP_Target());
			req.setAttribute("list", list);
			req.getRequestDispatcher("jsj.jsp").forward(req, resp);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
