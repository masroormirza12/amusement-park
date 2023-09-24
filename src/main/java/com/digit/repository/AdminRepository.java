package com.digit.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.digit.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String> {

	Admin findByuserName(String userName);
	
	

}
