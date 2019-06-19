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
import com.ydwlsys.utils.JdbcChar;

@WebServlet("/DownServlet")
public class DownServlet extends HttpServlet{

	
	
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
		String name=req.getParameter("fileName");
		JdbcChar ch=new JdbcChar();
		List<File> list=new ArrayList<File>();
		list=ch.getFileByName(name);
		req.setAttribute("list",list);
		req.getRequestDispatcher("/pp.jsp").forward(req, resp);
	}
	
}
