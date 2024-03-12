package com.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.customer.controller.entity.Customer;
import com.customer.controller.service.CustomerService;

@Controller
public class MainController {
    
    @Autowired
    CustomerService customerService;
    
    @RequestMapping("/")
    public String viewHome() {
        return "home";
    }
    
    @GetMapping("/addCustomer")
    public String addCustomer() {
        return "addCustomer";
    }
    
    @PostMapping("/insertCustomer")
    public String insertCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.addCustomer(customer);
        return "redirect:/customerReport";
    }
    
    @GetMapping("/customerReport")
    public String loadCustomer(Model model) {
        model.addAttribute("customers", customerService.getAllCustomer());
        model.addAttribute("title", "Customer Report");
        return "CustomerReport";
    }
    
    @GetMapping("/editCustomer/{id}")
    public String loadEditForm(@PathVariable(value = "id") int id, Model model) {
        Customer customer = customerService.getById(id);
        model.addAttribute("customer", customer);
        model.addAttribute("title", "Edit Customer");
        return "editCustomer";
    }
    
    @PostMapping("/editCustomer/updateCustomer")
    public String updateCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.updateCustomer(customer);
        return "redirect:/customerReport";
    }
    
    @GetMapping("/deleteCustomer/{id}")
    public String deleteCustomer(@PathVariable int id) {
        customerService.deleteCustomer(id);
        return "redirect:/customerReport";
    }
}
