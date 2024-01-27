package com.den.controller;

import com.den.entity.User;
import com.den.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {
  @Autowired
  private UserRepo userRepo;

  @PreAuthorize("hasAuthority('ADMIN')")
  @RequestMapping("")
  public String index(Model model) {
    model.addAttribute("user", new User());
    model.addAttribute("users", userRepo.findAll());
    return "admin/index";
  }
}
