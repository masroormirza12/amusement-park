package com.digit.service;

import java.util.List;

import com.digit.entity.Customer;

public interface CustomerServiceInterface {

	List<Customer> getAllCustomer();

	public Customer findByUsername(String userName);

	public void addCustomer1(Customer c);

	Customer updateCustomer(Customer customer, String userName);

	void deletecustomer(String userName);

}
