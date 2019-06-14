package com.ydwlsys.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ydwlsys.entity.Teacher;

public class TeacherServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("现在已经来到了贾鹏的功能模块！");
		
		JSONObject jsonObject = new JSONObject();
		Teacher teacher=new Teacher();
		
		teacher.setId(1);
		teacher.setName("jiapeng");
		jsonObject.put("teacher", teacher);
		
		resp.getWriter().print(jsonObject);
		
	}
}
