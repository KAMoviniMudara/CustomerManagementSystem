package com.customer.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.customer.controller.dao.CustomerDao;
import com.customer.controller.entity.Customer;

@Service
public class CustomerService {
	
	@Autowired
	CustomerDao customerDao;
	
	
	public void addCustomer(Customer customer)
	{
		customerDao.addCustomer(customer);
	}
	
	public List<Customer> getAllCustomer()
	{
		return customerDao.getAllCustomer();
	}
	
	
	public Customer getById(int id)
	{
		return customerDao.getCustomerById(id);
	}
	
	
	public void updateCustomer(Customer customer)
	{
		customerDao.updateCustomer(customer);
	}
	
	
	public void deleteCustomer(int id)
	{
		customerDao.deleteCustomer(id);
	}

}
