package com.den.dto;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class RegisterDto {

  private String name;

  private String email;

  private String password;
}
