package com.incentro.devops.api.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/health")
public class HealthController {
  @GetMapping("/ping")
  public String getPing() {
    return "pong";
  }
}