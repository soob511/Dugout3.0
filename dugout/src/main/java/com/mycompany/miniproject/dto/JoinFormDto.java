package com.mycompany.miniproject.dto;

import lombok.Data;

@Data
public class JoinFormDto {
	private String id;
	private String password;
	private String confirmPassword;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String test;
}
