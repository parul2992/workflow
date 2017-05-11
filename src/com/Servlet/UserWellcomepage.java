package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClass.UserFilledDetails;
import com.Implementation.ImplementaionClass;
import com.Interface.MyInterface;

/**
 * Servlet implementation class UserWellcomepage
 */
@WebServlet("/UserWellcomepage")
public class UserWellcomepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserWellcomepage() {
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
		
		
		
		
		String unm=request.getParameter("uname");
		String address=request.getParameter("Address");
		String cntry=request.getParameter("Country");
		String state=request.getParameter("state");
		String district=request.getParameter("District");
		String fltitile=request.getParameter("FileTitile");
		//String cash=request.getParameter("cash");
		String brname=request.getParameter("branchname");
		String br=request.getParameter("branch");
		String acno=request.getParameter("a/cno");
		
		
		UserFilledDetails b3=new UserFilledDetails();
		
		b3.setUname(unm);
		b3.setAddress(address);
		b3.setCountry(cntry);
		b3.setState(state);
		b3.setDistrict(district);
		b3.setFiletitle(fltitile);
		//b3.setCash(cash);
		b3.setBranchname(brname);
		b3.setBranch(br);
		b3.setAcno(acno);
		
		
		
		MyInterface im=new ImplementaionClass();
		
		 int result=im.UserFillDetails(b3);
		
		if(result==1)
		{
			response.sendRedirect("Successpage.jsp");
		}
		else
		{
			response.sendRedirect("errorpage.jsp");
		}
		
		
	}

}
