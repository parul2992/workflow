package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClass.UserRegisterBean;
import com.Implementation.ImplementaionClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class Accept
 */
@WebServlet("/Accept")
public class Accept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accept() {
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
		PrintWriter out=response.getWriter();
		
		String userid=request.getParameter("userid");
		
		System.out.println("hiiii----"+userid);
		
		UserRegisterBean bean=new UserRegisterBean();
		bean.setUserid(userid);
		
		MyInterface im=new ImplementaionClass();
		
		
		int result=im.Accept(bean);
		if(result==1)
		{
			response.sendRedirect("AcceptSuccess.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
