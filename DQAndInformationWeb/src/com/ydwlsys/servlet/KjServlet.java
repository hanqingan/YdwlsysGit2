package com.ydwlsys.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.dao.impl.kjDaoImpl;
import com.ydwlsys.entity.Education;
import com.ydwlsys.service.KjService;
import com.ydwlsys.service.impl.KjServiceImpl;


/**
 * Servlet implementation class kjServlet
 */
@WebServlet("/kj")
public class KjServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("findAll".equals(method)){
		
				findAll(request,response);
			
		}else if("findByVid".equals(method)){
			findByVid(request,response);
		}
		
	}

	
	private void findByVid(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			String vid = request.getParameter("vid");
			kjDaoImpl daoImpl = new kjDaoImpl();
			List<Education> list1 = daoImpl.findByVid(vid);
			/*for (Education education : list1) {
				System.out.println(education.toString());
			}*/
			request.setAttribute("list1", list1);
			request.getRequestDispatcher("/kjyj/Kj.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
		 
		/* request.setAttribute("list1", list1);*/
		/* request.getRequestDispatcher("").forward(request, response);*/
	}


	private void findAll(HttpServletRequest request,
			HttpServletResponse response){
		try {
			String cid = request.getParameter("cid");
			KjService serviceImpl = new KjServiceImpl();
			 List<Education> list= serviceImpl.findBycid(cid);
			/* System.out.println("web");*/
			/* for (Education education : list) {
				System.out.println(education.toString());
			}*/
			 request.setAttribute("list", list);
			 
			 
			 if(cid.equals("4"))
			 request.getRequestDispatcher("/kjyj/kjcg.jsp").forward(request, response);
			 else if(cid.equals("2"))
				 request.getRequestDispatcher("/kjyj/yjjg.jsp").forward(request, response);
			 else if(cid.equals("1"))
				 request.getRequestDispatcher("/kjyj/kjdt.jsp").forward(request, response);
			 else if(cid.equals("3"))
				 request.getRequestDispatcher("/kjyj/kjjh.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
