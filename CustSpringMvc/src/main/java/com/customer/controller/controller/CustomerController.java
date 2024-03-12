package com.customer.controller.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.customer.controller.entity.Customer;
import com.customer.controller.service.CustomerService;

@RestController
@RequestMapping("/customer")
public class CustomerController {
    
    @Autowired
    CustomerService customerService;
    
    @GetMapping("/add")
    public String addCustomer() {
        return "addCustomer";
    }
    
    @PostMapping("/insert")
    public String insertCustomer(@ModelAttribute("insertCustomer") Customer customer) {
        customerService.addCustomer(customer);
        return "redirect:/customer/report";
    }
    
    @GetMapping("/report")
    public String loadCustomer(Model model) {
        model.addAttribute("customer", customerService.getAllCustomer());
        model.addAttribute("title", "Customer Report");
        return "CustomerReport";
    }
    
    @GetMapping("/edit/{id}")
    public String loadEditForm(@PathVariable(value = "id") int id, Model model) {
        Customer customer = customerService.getById(id);
        model.addAttribute("customer", customer);
        model.addAttribute("title", "Edit Customer");
        return "EditCustomer";
    }
    
    @PostMapping("/edit/update")
    public String updateCustomer(@ModelAttribute("Customer") Customer customer) {
        customerService.updateCustomer(customer);
        return "redirect:/customer/report";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable int id) {
        customerService.deleteCustomer(id);
        return "redirect:/customer/report";
    }
}
