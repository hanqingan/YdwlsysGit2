package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.dao.impl.TeacherDaoImpl;
import com.ydwlsys.entity.Teacher;

@SuppressWarnings("serial")
public class TeacherServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = req.getParameter("method");
		if ("findById".equals(method)) {
			findById(req, resp);
		}

	}

	private void findById(HttpServletRequest req, HttpServletResponse resp) {

		try {
			String id = req.getParameter("id");
			TeacherDaoImpl tea = new TeacherDaoImpl();
			List<Teacher> list = tea.Cx(id);

			for (Teacher teacher : list) {
				System.out.println(teacher.toString());
			}
			req.setAttribute("list", list);
			req.getRequestDispatcher("shiziduiwu/Grjj.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
