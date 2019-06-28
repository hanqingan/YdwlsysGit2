package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.entity.File;
import com.ydwlsys.entity.TeaDy;
import com.ydwlsys.service.ITeaDyService;
import com.ydwlsys.service.impl.TeaDyServiceImpl;

@WebServlet("/teaDyServlet")
public class TeaDyServlet extends HttpServlet{

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
//		System.out.println("aaa");
//		String name=req.getParameter("teaDyName");
//		JdbcChar ch=new JdbcChar();
//		
//		List<TeaDy> list=new ArrayList<TeaDy>();
//		list=ch.getTeaDyByName(name);
		String name=req.getParameter("teaDyName");
		ITeaDyService iTeaDyService=new TeaDyServiceImpl();
		List<TeaDy> list=new ArrayList<TeaDy>();
		list=iTeaDyService.getFileByName(name);
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/jiaoyujiaoxue/teaDyResult.jsp").forward(req, resp);
//		req.getRequestDispatcher("/ppp.jsp").forward(req, resp);
		
	}
}
