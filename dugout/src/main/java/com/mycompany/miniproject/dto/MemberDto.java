package com.mycompany.miniproject.dto;

import lombok.Data;

@Data
public class MemberDto {
	private String userid;
	private String password;
	private String username;
	private String phone;
	private String address;
	private String email;
	private boolean isadmin;
	private boolean isactive;
}
