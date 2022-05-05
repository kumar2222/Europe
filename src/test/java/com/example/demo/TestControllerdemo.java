package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestControllerdemo {

@GetMapping("/")
public String health() {
  return "Hello & Welcome to CloudKatha !!!";
}
}