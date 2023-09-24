package com.digit.service;


import java.util.List;

import com.digit.entity.Admin;



public interface AdminServiceInterface {

	Admin insertAdmin(Admin admin);
	public List<Admin> getAllAdmin();
	Admin getById(String userName);
	Admin updateAdmin(Admin admin, String userName) ;
	public void deleteAdmin(String userName);



}
