package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.entity.Leadership;
import com.ydwlsys.service.LeadershipService;
import com.ydwlsys.service.impl.LeadershipServiceImpl;
@WebServlet("/LeadershipServlet")
public class LeadershipServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO 自动生成的方法存根
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO 自动生成的方法存根
		
		LeadershipService leader=new LeadershipServiceImpl();  
		List<Leadership> list=new ArrayList<Leadership>();
		try {
			list=leader.getAllFile();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("list", list);
		req.getRequestDispatcher("xueyuangaikuang/xygk.jsp").forward(req, resp);
	}
}
