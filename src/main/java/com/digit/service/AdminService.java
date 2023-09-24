package com.digit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digit.entity.Admin;
import com.digit.repository.AdminRepository;

@Service
public class AdminService implements AdminServiceInterface {

	@Autowired
	AdminRepository repository;

	@Override
	public Admin insertAdmin(Admin admin ) {

		return repository.save(admin);
	}

	@Override
	public Admin updateAdmin(Admin admin, String userName){
		// TODO Auto-generated method stub

			Admin a = repository.findById(userName).get();

		a.setUserName(admin.getUserName());
		a.setPassword(admin.getPassword());
		a.setAddress(a.getAddress());
		a.setMobileNumber(admin.getMobileNumber());
		a.setEmail(admin.getEmail());

		return repository.save(admin);

	}


	@Override
	public Admin getById(String userName) {

		return repository.findById(userName).get();
	}

	@Override
	public List<Admin> getAllAdmin() {

		return repository.findAll();
	}

	@Override
	public void deleteAdmin(String userName) {

		repository.deleteById(userName);

	}

	public Admin findByuserName(String userName) {

		return repository.findByuserName(userName);
	}

}
