package com.digit.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.digit.entity.Customer;
@Repository
public interface CustomerRepository extends JpaRepository<Customer,String>{

	Customer findByuserName(String userName);
	Customer findByPassword(String password);



}
