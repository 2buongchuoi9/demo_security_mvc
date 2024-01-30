package com.den.controller;

import com.den.auth.UserRoot;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.stream.Collectors;

@Controller
@RequestMapping("/account")
public class AccountController {
  @RequestMapping("/login")
  public String login() {
    return "account/login";
  }
  @RequestMapping("/info")
  public String info(Model model, Authentication auth) {
    UserRoot userRoot = (UserRoot) auth.getPrincipal();
    System.out.println("::::::::::::::" + userRoot.getAuthorities().stream().map(v -> v.getAuthority()).collect(Collectors.joining(", ")));
    model.addAttribute("user", userRoot);
    return "info";
  }
  @RequestMapping("/register")
  public String register() {
    return "account/register";
  }
  @RequestMapping("/login/success")
  public String handleLoginSuccess() {
    return "index";
  }
  @RequestMapping("/accessDenied")
  public String accessDenied() {
    return "access/accessDenied";
  }
  @RequestMapping("/login/failure")
  public String handleLoginFailure(Model model) {
    model.addAttribute("error", "Email or password is not true");
    return "access/error";
  }

}
