package com.digit.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digit.entity.Customer;
import com.digit.repository.CustomerRepository;

@Service
public class CustomerService implements CustomerServiceInterface {

	@Autowired
	CustomerRepository repository;

	@Override
	public List<Customer> getAllCustomer() {

		return repository.findAll();

	}

	@Override
	public void addCustomer1(Customer c) {
		repository.save(c);

	}

	@Override
	public Customer findByUsername(String userName) {

		return repository.findByuserName(userName);
	}

	@Override
	public Customer updateCustomer(Customer customer, String userName) {

		Customer c = repository.findByuserName(userName);
		c.setUserName(customer.getUserName());
		c.setMobileNumber(customer.getMobileNumber());
		c.setAddress(customer.getAddress());
		c.setEmail(customer.getEmail());
		c.setPassword(customer.getPassword());
		return repository.save(c);
	}

	@Override
	public void deletecustomer(String userName) {

		repository.deleteById(userName);

	}

	public Customer customerupdate(Customer customer, String userName) {

		Customer c = repository.findByuserName(userName);

		c.setUserName(customer.getUserName());

		c.setMobileNumber(customer.getMobileNumber());

		c.setAddress(customer.getAddress());

		c.setEmail(customer.getEmail());

		c.setPassword(customer.getPassword());

		return repository.save(c);

	}

}
