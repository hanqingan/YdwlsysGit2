package com.ydwlsys.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.ydwlsys.dao.impl.TeacherDaoImpl;
import com.ydwlsys.entity.Teacher;
import com.ydwlsys.service.ITeacherService;
import com.ydwlsys.service.impl.TeacherServiceImpl;

import net.sf.json.JSONObject;

@WebServlet("/ts")
public class TeacherServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse response){
		// TODO Auto-generated method stub
		String method = req.getParameter("method");
		if ("findById".equals(method)) {
			findById(req, response);
		}
	}

	private void findById(HttpServletRequest req, HttpServletResponse response) {
				
			int id=Integer.parseInt(req.getParameter("id"));
			ITeacherService teacherService=new TeacherServiceImpl();
			Teacher teacher=teacherService.findById(id);
			
			/* 转list用jsonarray，转对象用json.object */
			JSONObject json = JSONObject.fromObject(teacher);
			/* JSONArray json = JSONArray.fromObject(list); */
			response.setCharacterEncoding("utf-8");
			System.out.println(json.toString());
			try {
				response.getWriter().print(json.toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
//			List<Teacher> list = tea.Cx(id);
//
//			for (Teacher teacher : list) {
//				System.out.println(teacher.toString());
//			}
//			req.setAttribute("list", list);
//			req.getRequestDispatcher("shiziduiwu/Grjj.jsp").forward(req, resp);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse response)  {
		// TODO Auto-generated method stub
		doGet(req, response);
	}
}
