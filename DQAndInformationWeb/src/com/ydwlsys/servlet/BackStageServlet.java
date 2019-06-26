package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.DefaultEditorKit.BeepAction;

import org.apache.commons.beanutils.BeanUtils;

import com.ydwlsys.entity.Navigation;
import com.ydwlsys.service.IBackService;
import com.ydwlsys.service.impl.BackServiceImpl;

/**
 * Servlet implementation class BackStage
 */
@WebServlet("/back")
public class BackStageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		if ("ZsfindAll".equals(method)) {

			ZsfindAll(request, response);
		} else if ("ZsdeleteByVid".equals(method)) {
			ZsdeleteByVid(request, response);
		} else if ("save".equals(method)) {
			save(request, response);
		} else if ("update".equals(method)) {
			update(request, response);
		} else if ("Login".equals(method)) {
			Login(request, response);
		}
	}

	private void Login(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			if ("123".equals(username) && "123".equals(password)) {
				/* request.getParameter("ZsjyBack.jsp"). */
				request.getRequestDispatcher("BackStage.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "用户名或密码错误");
				request.getRequestDispatcher("BackLogin.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) {
		try {
			// TODO Auto-generated method stub
			Map<String, String[]> parameterMap = request.getParameterMap();
			Navigation navigation = new Navigation();
			String vid = request.getParameter("vid");
			/* System.out.println(vid); */
			BeanUtils.populate(navigation, parameterMap);
			BackServiceImpl serviceImpl = new BackServiceImpl();
			serviceImpl.update(navigation, vid);
			response.getWriter().print("ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void save(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		Map<String, String[]> map = request.getParameterMap();

		/*
		 * System.out.println(name); for (String key : map.keySet()) {
		 * System.out.println(map.get(key)[0]); }
		 */
		try {
			Map<String, String[]> parameterMap = request.getParameterMap();
			Navigation navigation = new Navigation();
			BeanUtils.populate(navigation, parameterMap);
			BackServiceImpl serviceImpl = new BackServiceImpl();
			serviceImpl.save(navigation);
			response.getWriter().print("ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void ZsdeleteByVid(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			String vid = request.getParameter("vid");
			/* System.out.println(vid); */
			IBackService backServiceImpl = new BackServiceImpl();
			backServiceImpl.ZsdeleteByVid(vid);
			response.getWriter().print("ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void ZsfindAll(HttpServletRequest request, HttpServletResponse response) {

		try {
			/* 招生就业模块分页 */
			int pageNnmber = Integer.parseInt(request.getParameter("page"));
			int pageSize = Integer.parseInt(request.getParameter("rows"));

			/* 查询全部文章头部数据 */
			IBackService serviceImpl = new BackServiceImpl();
			String list = serviceImpl.ZsfindAll(pageNnmber, pageSize);
			response.getWriter().print(list);
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
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
