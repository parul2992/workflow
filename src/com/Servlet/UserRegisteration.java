package com.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClass.UserRegisterBean;
import com.Implementation.ImplementaionClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class UserRegisteration
 */
@WebServlet("/UserRegisteration")
public class UserRegisteration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisteration() {
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
		
		
		
		
		String userid=request.getParameter("UserId");
		String uname=request.getParameter("UserName");
		String pwd=request.getParameter("Psssword");
		String fname=request.getParameter("fathername");
		String Cntry=request.getParameter("Country");
		String dob=request.getParameter("Dob");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String Mno=request.getParameter("mobileno");
		
		
		
		UserRegisterBean b1=new UserRegisterBean();
		
		
		b1.setUserid(userid);
		b1.setUsername(uname);
		b1.setPassword(pwd);
		b1.setFathername(fname);
		b1.setCountry(Cntry);
		b1.setDob(dob);
		b1.setGender(gender);
		b1.setEmail(email);
		b1.setMobileNo(Mno);
		
		HttpSession session=request.getSession();
		
		session.setAttribute("username", uname);
		session.setAttribute("userid", userid);
		
		
		  Random rm=new Random();
		
          int key=rm.nextInt(100000);
		 String privateKey=""+key;
		 
		 
		 b1.setSecretkey(privateKey);
		
		 
//		 ArrayList ar=new ArrayList<>();
//			
//			ar.add(usernm);
//			ar.add(uid);
//			ar.add(privateKey);
//			
//			System.out.println("user"+usernm);
//			System.out.println("user"+uid);
//			System.out.println("user"+privateKey);
//		 
 
		 
		 
		 
		 
		 MyInterface im=new ImplementaionClass();
		 
		int i=im.UserRegister(b1);
		
		
		if(i==1)
		{
			
              HttpSession session1=request.getSession();
			
			session.setAttribute("secret", privateKey);
			
			
			response.sendRedirect("UserLogin.jsp");
			
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
