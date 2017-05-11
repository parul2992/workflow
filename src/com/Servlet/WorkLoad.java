package com.Servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BeanClass.WorkloadBean;
import com.Implementation.ImplementaionClass;
import com.Interface.MyInterface;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class WorkLoad
 */
@WebServlet("/WorkLoad")
public class WorkLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkLoad() {
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
		
		Part part = null;
		FilePart filePart = null;
		ParamPart paramPart = null;
		String type = null;
		double fileSize = 0.0;
		String filename = null;
		String tagValue = null;
		// String items=null;
		String filecontent = "";

	     ArrayList<String> paramValues1 = new ArrayList<String>();

		MultipartParser mpp = new MultipartParser(request, 999999999);

		
		String realpath = getServletContext().getRealPath("/");
		// System.out.println(realpath+"===I am Real Path");
		String Uploadpath = realpath.substring(0, realpath.indexOf("."))
				+ "WorkflowScheduling\\WebContent\\UploadFiles\\";

		System.out.println("Uploadpath =" + Uploadpath);

		while ((part = mpp.readNextPart()) != null)
		{
			if (part.isFile())
			{
				System.out.println("File  in coming");

				filePart = (FilePart) part;

				Uploadpath = Uploadpath + filePart.getFileName();

				filename = filePart.getFileName();

				File uploadedFile = new File(Uploadpath);

				type = filePart.getContentType();

				fileSize = filePart.writeTo(uploadedFile);

			} 
			else if (part.isParam()) 
			{
				paramPart = (ParamPart) part;

				String tagName = paramPart.getName();

				System.out.println("tagName = " + tagName);

				tagValue = paramPart.getStringValue();

				System.out.println("tagValue = " + tagValue);

				paramValues1.add(tagValue);

			}

		}

		System.out.println("Paramvales"+paramValues1);
		
              String fid=paramValues1.get(0);
              String ftitile=paramValues1.get(1);
              String cash=paramValues1.get(2);
              String fname=filename;
          
           
              
              WorkloadBean b4=new WorkloadBean();
              
              b4.setFileid(fid);
              b4.setFileTitile(ftitile);
              b4.setCash(cash);
              b4.setFilename(fname);
              b4.setFilesize(String.valueOf(fileSize));
              b4.setFilepath(Uploadpath);
              
              
              
              
              MyInterface im=new ImplementaionClass();
              
               int result=im.WorkloadDetails(b4);
           
              
              if(result==1)
              {
            	  response.sendRedirect("WorkLoadSuccess.jsp");
              }
              else
              {
            	  response.sendRedirect("errorpage.jsp");
              }
              
	}

}
