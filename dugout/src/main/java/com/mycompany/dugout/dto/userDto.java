package com.mycompany.dugout.dto;

import lombok.Data;

@Data
public class userDto {
	private String userId;
	private String userPassword;
	private String userName;
	private String userPhone;
	private String userAddress;
	private String userEmail;
	private String userRole;
	private int userActive;
}
