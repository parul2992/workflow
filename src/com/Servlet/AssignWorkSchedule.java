package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClass.Workschedule;
import com.Implementation.ImplementaionClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class AssignWorkSchedule
 */
@WebServlet("/AssignWorkSchedule")
public class AssignWorkSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignWorkSchedule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String fdate=request.getParameter("fromdate");
		String tdate=request.getParameter("todate");
		String userid=request.getParameter("uid");
		String uname=request.getParameter("uname");
		String tid=request.getParameter("Titleid");
		String filetitle=request.getParameter("filetitile");
		String fname=request.getParameter("filename");
		String ctype=request.getParameter("contenttype");
		
		
		Workschedule b5=new Workschedule();
		
		b5.setFromdate(fdate);
		b5.setTodate(tdate);
		b5.setUserid(userid);
		b5.setUsername(uname);
		b5.setTitleid(tid);
		b5.setFiletitle(filetitle);
		b5.setFilename(fname);
		b5.setContenttype(ctype);
		
		
		MyInterface im=new ImplementaionClass();
		int result=im.Assignworkschedule(b5);
		
		if(result==1)
		{
			response.sendRedirect("ProviderWelocomepage.jsp");
		}
		else
		{
			response.sendRedirect("errorpage.jsp");
		}
		
	}

}
