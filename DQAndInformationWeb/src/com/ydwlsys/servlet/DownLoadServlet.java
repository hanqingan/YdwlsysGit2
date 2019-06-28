package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.dao.impl.DownLoadImpl;
import com.ydwlsys.entity.File;
import com.ydwlsys.service.IFileService;
import com.ydwlsys.service.impl.FileServiceImpl;
import com.ydwlsys.utils.JDBCUtils;


@WebServlet("/aa")
public class DownLoadServlet extends HttpServlet {

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
//		DownLoadImpl char1=new DownLoadImpl();
//		List<File> list=new ArrayList<File>();
//		list=char1.getFileByName();
//		req.setAttribute("list", list);
		
		IFileService fileService=new FileServiceImpl();
		List<File> list=new ArrayList<File>();
		list=fileService.getAllFile();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/jiaoyujiaoxue/downLoad.jsp").forward(req, resp);

	}
}
