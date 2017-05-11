package com.Implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.BeanClass.UserFilledDetails;
import com.BeanClass.UserRegisterBean;
import com.BeanClass.WorkloadBean;
import com.BeanClass.Workschedule;
import com.DataBaseConnection.DBConnection;
import com.Interface.MyInterface;



public class ImplementaionClass implements MyInterface {

	
	Connection con;
	int result;
	String status;
	
	
	@Override
	public int UserRegister(UserRegisterBean bean) {
		// TODO Auto-generated method stub
		
		
		con=DBConnection.con();
		

		
		try{
			
			PreparedStatement ps=(PreparedStatement)con.prepareStatement("INSERT INTO workflowscheduling.userregistration VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			
			
			
			
			ps.setString(1, bean.getUserid());
			ps.setString(2, bean.getUsername());
			ps.setString(3, bean.getFathername());
			ps.setString(4, bean.getCountry());
			ps.setString(5, bean.getDob());
			ps.setString(6, bean.getGender());
			ps.setString(7, bean.getEmail());
			ps.setString(8, bean.getMobileNo());
			ps.setString(9, bean.getSecretkey());
			ps.setString(10, bean.getPassword());
			ps.setString(11, "Pending");
			
			System.out.println(ps);
			result=ps.executeUpdate();
			
			System.out.println("Values successfully inserted");
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return result;
	}



	@Override
	public boolean ULogin(UserRegisterBean bean) {
		// TODO Auto-generated method stub
		String userid = null;
         boolean status="pending" != null;
		con=DBConnection.con();
		
		try{
			
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("SELECT userid,status FROM workflowscheduling.userregistration u where userid='"+bean.getUserid()+"' and password='"+bean.getPassword()+"'");
			
			
			ResultSet rs=(ResultSet)ps.executeQuery();
			
//			while(rs.next())
//			{
//				userid =rs.getString(1);
//				status =rs.getString(2);
//				
//				
//				System.out.println("userid ="+userid);
//				System.out.println("status ="+status);
//			}
//			
			status=rs.next();
			System.out.println(ps);
			System.out.println("Login successfully inserted");
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return status;
	}



	@Override
	public int UserFillDetails(UserFilledDetails bean) {
		// TODO Auto-generated method stub
		
		con=DBConnection.con();
		
		try{
			
		PreparedStatement ps=(PreparedStatement)con.prepareStatement("INSERT INTO workflowscheduling.userfilleddetails VALUES(?,?,?,?,?,?,?,?,?)");
		
		
		
		
		ps.setString(1, bean.getUname());
		ps.setString(2, bean.getAddress());
		ps.setString(3, bean.getCountry());
		ps.setString(4, bean.getState());
		ps.setString(5, bean.getDistrict());
		ps.setString(6, bean.getFiletitle());
		//ps.setString(7, bean.getCash());
		ps.setString(7, bean.getBranchname());
		ps.setString(8, bean.getBranch());
		ps.setString(9, bean.getAcno());
		System.out.println(ps);
		result=ps.executeUpdate();
	
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
		return result;
	}



	@Override
	public int WorkloadDetails(WorkloadBean bean) {
		// TODO Auto-generated method stub
		
		
		con=DBConnection.con();
		
		try
		{
			
			PreparedStatement ps=(PreparedStatement)con.prepareStatement("INSERT INTO workflowscheduling.workloaddetails VALUES(?,?,?,?,?,?)");
			
			
			
			
			ps.setString(1, bean.getFileid());
			ps.setString(2, bean.getFileTitile());
			ps.setString(3, bean.getCash());
			ps.setString(4, bean.getFilename());
			ps.setString(5, bean.getFilesize());
			ps.setString(6, bean.getFilepath());

			 result=ps.executeUpdate();
			 System.out.println(ps);
			
		}
		catch(Exception e)
		
		{
			e.printStackTrace();
		}
		
		
		
		return result;
	}



	@Override
	public int Assignworkschedule(Workschedule bean) {
		// TODO Auto-generated method stub
con=DBConnection.con();
		
		try{
			
		PreparedStatement ps=(PreparedStatement)con.prepareStatement("INSERT INTO workflowscheduling.timeslot VALUES(?,?,?,?,?,?,?,?)");
		
		
		
		
		ps.setString(1, bean.getFromdate());
		ps.setString(2, bean.getTodate());
		ps.setString(3, bean.getUserid());
		ps.setString(4, bean.getUsername());
		ps.setString(5, bean.getTitleid());
		ps.setString(6, bean.getFiletitle());
		ps.setString(7, bean.getFilename());
		ps.setString(8, bean.getContenttype());
	   
		System.out.println(ps);
		
		result=ps.executeUpdate();
	
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
		return result;
	}



	@Override
	public int Accept(UserRegisterBean bean) {
		
		int result = 0;
		con=DBConnection.con();
		try {
			
			System.out.println("userid===="+bean.getUserid());
			
			PreparedStatement ps=(PreparedStatement)con.prepareStatement("UPDATE workflowscheduling.userregistration u SET status='Accept' where userid='"+bean.getUserid()+"'");
            //UPDATE workflowscheduling.userregistration u SET status='Accept' where userid='"+bean.getUserid()+"'")
			
			 result=ps.executeUpdate();  //UPDATE workflowscheduling.userregistration a SET STATUS='ACCEPTED' WHERE userid=?
		
		}
		catch (SQLException e)
		{
			
			e.printStackTrace();
		}
		
		
		return result;
	}



	@Override
	public int Reject(UserRegisterBean bean) {
		int result = 0;
		con=DBConnection.con();
		try {
			PreparedStatement ps=(PreparedStatement)con.prepareStatement("UPDATE workflowscheduling.userregistration u SET status='Reject' where userid='"+bean.getUserid()+"'");
		    
			 result=ps.executeUpdate();
		
		}
		catch (SQLException e)
		{
			
			e.printStackTrace();
		}
		
		
		return result;
	}

}
