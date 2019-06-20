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
import com.ydwlsys.utils.JdbcChar;
@WebServlet("/list_text")
public class eduServlet extends HttpServlet{

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
//		req.getRequestDispatcher("/list-text.html").forward(req, resp);
		JdbcChar char1=new JdbcChar();
		List<TeaDy> list=new ArrayList<TeaDy>();
		list=char1.getAllTeaDy();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/jiaoyujiaoxue/teaDy.jsp").forward(req, resp);
	}
	
}
