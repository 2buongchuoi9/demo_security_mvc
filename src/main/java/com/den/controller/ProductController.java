package com.den.controller;

import com.den.entity.Product;
import com.den.repository.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
  @Autowired
  private ProductRepo productRepo;
  @RequestMapping("")
  public String index(Model model) {
    model.addAttribute("products", productRepo.findAll());
    return "product";
  }
  private void fakeProduct() {
    productRepo.saveAll(List.of(
        Product.builder()
            .name("Madaz 3")
            .quantity(500)
            .price(2380000.0)
            .build(),
        Product.builder()
            .name("Iphone 15")
            .quantity(3000)
            .price(30000.0)
            .build(),
        Product.builder()
            .name("Asus tuf gaming")
            .quantity(400)
            .price(25000.0)
            .build()
    ));
  }
}
