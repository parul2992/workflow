package com.Interface;


import com.BeanClass.UserFilledDetails;
import com.BeanClass.UserRegisterBean;
import com.BeanClass.WorkloadBean;
import com.BeanClass.Workschedule;

public interface MyInterface {
	
	
	public int UserRegister(UserRegisterBean bean);
	public boolean ULogin(UserRegisterBean bean);
	
	public int UserFillDetails(UserFilledDetails bean);
	public int WorkloadDetails(WorkloadBean bean);
	
	public int Assignworkschedule(Workschedule bean);
	public int Accept(UserRegisterBean bean);
	public int Reject(UserRegisterBean bean);
	
//	 public int updateStatus(String username);
}
