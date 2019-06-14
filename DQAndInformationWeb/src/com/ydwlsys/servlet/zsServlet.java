package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.entity.Essay;
import com.ydwlsys.entity.Navigation;
import com.ydwlsys.service.zsService;
import com.ydwlsys.service.impl.zsServiceImpl;

/**
 * Servlet implementation class zsServlet
 */
@WebServlet("/zs")
public class zsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public zsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		if ("findBycid".equals(method)) {
			findBycid(request, response);
		} else if ("findEssay".equals(method)) {
			findEssay(request, response);
		}

	}

	private void findEssay(HttpServletRequest request, HttpServletResponse response) {
		try {
			String name = request.getParameter("name");

			zsService serviceImpl = new zsServiceImpl();
			List<Essay> list = serviceImpl.findEssay(name);
			for (Essay essay : list) {
				System.out.println(essay.toString());
			}
			request.setAttribute("list", list);
			request.getRequestDispatcher("Essay.jsp").forward(request, response);
			// System.out.println(name);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	private void findBycid(HttpServletRequest request, HttpServletResponse response) {
		try {
			String cid = request.getParameter("cid");
			System.out.println(cid);
			/*
			 * 分页 int pageNumber=Integer.parseInt(request.getParameter("pageNumber")); int
			 * pageSize=2;
			 */
			zsService service = new zsServiceImpl();
			List<Navigation> list = service.findBycid(cid);
			/*
			 * for (Navigation navigation : list) {
			 * System.out.println(navigation.toString()); }
			 */
			String cid1 = "2";
			List<Navigation> list1 = service.findBycid(cid1);

			request.setAttribute("list", list);
			request.setAttribute("list1", list1);
			request.getRequestDispatcher("about.jsp").forward(request, response);
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
