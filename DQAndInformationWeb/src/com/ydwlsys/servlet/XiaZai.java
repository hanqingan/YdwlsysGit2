package com.ydwlsys.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class xiazai
 */
/*@WebServlet("/xz")*/
@WebServlet("/xz")
public class XiaZai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XiaZai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filename=request.getParameter("filename");
		ServletContext sc=getServletContext();
		String mimeType = sc.getMimeType("/"+filename);
		response.setHeader("content-type", mimeType);
		response.setHeader("content-disposition", "attachment;filename="+filename);
		InputStream is=sc.getResourceAsStream("/"+filename);
		ServletOutputStream os=response.getOutputStream();
		byte[] buf = new byte[1024];
		int len=0;
		while((len=is.read(buf))!=-1){
			os.write(buf,0,len);
		}
		 os.close();
		 is.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
