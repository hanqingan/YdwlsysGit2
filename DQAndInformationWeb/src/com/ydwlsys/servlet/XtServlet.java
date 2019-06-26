package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.dao.Xtdao;
import com.ydwlsys.dao.impl.XtDaoImpl;
import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Group;
import com.ydwlsys.entity.PageBean;
import com.ydwlsys.service.XtService;
import com.ydwlsys.service.impl.XtServiceImpl;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class xtServlet
 */
@WebServlet("/xt")
public class XtServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XtServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		if ("findByCid".equals(method)) {
			findByCid(request, response);
		} else if ("findNei".equals(method)) {
			findNei(request, response);
		} else if ("findImg".equals(method)) {
			findNei(request, response);
		}else if("findAll".equals(method)){
			findAll(request,response);
		}

		// xtServiceImpl.findByCid();
	}

	private void findNei(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			String name = request.getParameter("name");
			System.out.println(name);
			XtService serviceImpl = new XtServiceImpl();
			List<Content> list1 = serviceImpl.findNei(name);
			request.setAttribute("list1", list1);
			request.getRequestDispatcher("xt.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void findByCid(HttpServletRequest request, HttpServletResponse response) {
		try {

			String cid = request.getParameter("cid");
			XtService xtServiceImpl = new XtServiceImpl();
			List<Group> list = xtServiceImpl.findByCid(cid);

			request.setAttribute("list", list);
			request.getRequestDispatcher("xt2.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void findAll(HttpServletRequest request, HttpServletResponse response) {

		try {
			int pageNnmber = Integer.parseInt(request.getParameter("page"));
			int pageSize = Integer.parseInt(request.getParameter("rows"));

			XtService xtServiceImpl = new XtServiceImpl();
			List<Content> list = xtServiceImpl.findAll(pageNnmber, pageSize);

			Xtdao xtDaoImpl = new XtDaoImpl();
			int count = xtDaoImpl.findCount();

			PageBean pb = new PageBean();
			pb.setTotal(count);
			pb.setRows(list);

			/* תlist��jsonarray��ת������json.object */
			JSONObject json = JSONObject.fromObject(pb);
			/* JSONArray json = JSONArray.fromObject(list); */
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(json.toString());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}