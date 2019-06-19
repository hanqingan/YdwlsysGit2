package com.ydwlsys.servlet;


import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ydwlsys.entity.File;
import com.ydwlsys.utils.JdbcChar;
@WebServlet("/xiazai")
public class XiaZaiServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XiaZaiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @param fileName 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		// TODO Auto-generated method stub
	
		req.setCharacterEncoding("utf-8");
		//�����ļ�����Ҫ������Ϣͷ
		 String name =req.getParameter("fileName");
		
		 JdbcChar ch=new JdbcChar();
		 List<File> list=new ArrayList<File>();
		 list=ch.getFileByName(name);
		  String file=list.get(0).getFileAddress();
		resp.addHeader("Content-Type","application/octet-stream");
		 resp.addHeader("Content-Disposition","attachement;filename="+name);
		
		InputStream in= getServletContext().getResourceAsStream(file);
		ServletOutputStream out= resp.getOutputStream();
		byte[] bs=new byte[10];
		int len=-1;
		while((len=in.read(bs))!= -1){
			out.write(bs,0,len);
		}
		out.close();
	}

}
