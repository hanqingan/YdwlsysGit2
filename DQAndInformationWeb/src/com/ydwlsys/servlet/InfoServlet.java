package com.ydwlsys.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.entity.Info;
import com.ydwlsys.entity.Number;
import com.ydwlsys.service.InfoService;
import com.ydwlsys.service.impl.InfoServiceimpl;



@WebServlet("/info")
public class InfoServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println(123456789);
		req.setCharacterEncoding("utf-8");
		String flag=req.getParameter("flag");
		if(flag.equals("dt")){
			String part=req.getParameter("part");
//			String title=req.getParameter("title");
			InfoService iep=new InfoServiceimpl();
			List<Info>list=iep.selectpart(part);
			req.setAttribute("list", list);
			req.getRequestDispatcher("/dangzheng/main.jsp").forward(req, resp);
			
		}
		else if(flag.equals("text")){
			String title=req.getParameter("title");
//		int id=Integer.parseInt(req.getParameter("id"));
			InfoService iep=new InfoServiceimpl();
			Info i=iep.select(title);
			req.setAttribute("i", i);
			req.getRequestDispatcher("/dangzheng/text.jsp").forward(req, resp);
		}
		else if(flag.equals("number")){
			
			InfoService iep=new InfoServiceimpl();	
			List<Number> listother=iep.selectother();
			List<Number> list=iep.selectnumber();
			List<Number> listother1=iep.selectother1();
			List<Number> list1=iep.selectnumber1();
			List<Number> listother2=iep.selectother2();
			List<Number> list2=iep.selectnumber2();
			List<Number> listother3=iep.selectother3();
			List<Number> list3=iep.selectnumber3();
			req.setAttribute("listother", listother);
			req.setAttribute("list", list);
			req.setAttribute("listother1", listother1);
			req.setAttribute("list1", list1);
			req.setAttribute("listother2", listother2);
			req.setAttribute("list2", list2);
			req.setAttribute("listother3", listother3);
			req.setAttribute("list3", list3);
			req.getRequestDispatcher("/dangzheng/number.jsp").forward(req, resp);
		}
		
	}

}
