package com.customer.controller.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.customer.controller.entity.Customer;


@Component
public class CustomerDao {
    @Autowired
    HibernateTemplate hibernateTemplate;
    @Transactional
    public void addCustomer(Customer customer) {
        
        	hibernateTemplate.save(customer);
       
        
    }

    public List<Customer> getAllCustomer() {
        try {
            return hibernateTemplate.loadAll(Customer.class);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("An error occurred while fetching Customers");
        }
    }

    @Transactional
    public Customer getCustomerById(int id) {
        return hibernateTemplate.get(Customer.class, id);
    }

    @Transactional
    public void updateCustomer(Customer customer) {
        hibernateTemplate.update(customer);
    }

    @Transactional
    public void deleteCustomer(int id) {
        hibernateTemplate.delete(hibernateTemplate.load(Customer.class, id));
    }
}
