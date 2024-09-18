package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class UpdateUserDto {
	private String userId;
	private String userPassword;
	private String userName;
	private String userPhone;
	private String userAddress;
	private String userEmail;
}
