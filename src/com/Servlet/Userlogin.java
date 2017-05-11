package com.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClass.UserRegisterBean;
import com.DataBaseConnection.DBConnection;
import com.Implementation.ImplementaionClass;
import com.Interface.MyInterface;


/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
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
		
		
		
		
		String userid=request.getParameter("Userid");
		String pwd=request.getParameter("Psssword");
		
		
		UserRegisterBean b2=new UserRegisterBean();
		
		
		b2.setUserid(userid);
		b2.setPassword(pwd);
		
		
		
		
           HttpSession session=request.getSession();
		
		   session.setAttribute("userid", userid);
//		   session.setAttribute("status1", status);
		  
			
		
		
		
		
		
		
		
		MyInterface im=new ImplementaionClass();
		
		boolean status=im.ULogin(b2);
		
		
		
		
		
		session.setAttribute("Status", status);
		
		System.out.println("status ="+status);
		
		
		
		if(status==true)
		{
			
			response.sendRedirect("UserWelcomepage.jsp");
			
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
		
		
	}

}
