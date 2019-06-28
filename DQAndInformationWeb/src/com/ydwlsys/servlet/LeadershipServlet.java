package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.dao.LeadershipDao;
import com.ydwlsys.dao.Xtdao;
import com.ydwlsys.dao.impl.LeadershipDaoImpl;
import com.ydwlsys.dao.impl.XtDaoImpl;
import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Leadership;
import com.ydwlsys.entity.PageBean;
import com.ydwlsys.service.LeadershipService;
import com.ydwlsys.service.impl.LeadershipServiceImpl;

import net.sf.json.JSONObject;

@WebServlet(urlPatterns = "/LeadershipServlet", asyncSupported = true)
public class LeadershipServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		String method = request.getParameter("method");
		if ("findAll".equals(method)) {

			findAll(request, response);
		} else if ("deleteByid".equals(method)) {
			deleteByid(request, response);
		} else if ("save".equals(method)) {
			save(request, response);
		} else if ("update".equals(method)) {
			update(request, response);
		} else  {
			LeadershipService leader = new LeadershipServiceImpl();
			List<Leadership> list = new ArrayList<Leadership>();
			try {
				list = leader.getAllFile();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("list", list);
			request.getRequestDispatcher("xueyuangaikuang/xygk.jsp").forward(request, response);
		}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void save(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void deleteByid(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void findAll(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		LeadershipService leader = new LeadershipServiceImpl();
	
		int pageNnmber = Integer.parseInt(request.getParameter("page"))-1;
		int pageSize = Integer.parseInt(request.getParameter("rows"));
		
		List<Leadership> list=leader.findAll(pageNnmber, pageSize);
		LeadershipDao leadership=new LeadershipDaoImpl();
		int count = leadership.findCount();

		PageBean pb = new PageBean();
		pb.setTotal(count);
		pb.setRows(list);

		/* 转list用jsonarray，转对象用json.object */
		JSONObject json = JSONObject.fromObject(pb);
		/* JSONArray json = JSONArray.fromObject(list); */
		
		System.out.println(json.toString());
		response.setCharacterEncoding("utf-8");
		try {
			response.getWriter().print(json.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
