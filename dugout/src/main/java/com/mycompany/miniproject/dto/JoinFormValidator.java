package com.mycompany.miniproject.dto;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class JoinFormValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		boolean result = JoinFormDto.class.isAssignableFrom(clazz);
		return true;
	}

	@Override
	public void validate(Object target, Errors errors) {
		JoinFormDto joinform = (JoinFormDto) target;
		String id = joinform.getId();
		if(id==null||id.equals("")) {
			errors.rejectValue("id","error.id.required");
		}
		
		String password = joinform.getPassword();
		String pattern = "(?=.*[a-z])(?=.*[A-Z]).{8,15}";
		
		if(password.length()<8||password.length()>16) {
			errors.rejectValue("password","error.password.length");
		}else if(Pattern.matches(pattern,password)) {
			errors.rejectValue("password","error.password.wrongchar");
		}else if(password==null||password.equals("")) {
			errors.rejectValue("password","error.password.required");
		}
		
		String confirmPassword = joinform.getConfirmPassword();
		
		if(confirmPassword==null||confirmPassword.equals("")) {
			errors.rejectValue("confirmPassword","error.confirmpassword.required");
		}else if(confirmPassword!=password) {
			errors.rejectValue("confirmPassword","error.confirmpassword.diffrent");
		}
		
		String name = joinform.getName();
		if(name==null||name.equals("")) {
			errors.rejectValue("name","error.name.required");
		}
		
		String email = joinform.getEmail();
		if(email==null||email.equals("")) {
			errors.rejectValue("email","error.email.required");
		}
		
		String phone = joinform.getPhone();
		if(!phone.startsWith("010")) {
			errors.rejectValue("phone","error.phone.start");
		}else if(phone.length()!=11) {
			errors.rejectValue("phone","error.phone.length");
		}else if(phone==null||phone.equals("")) {
			errors.rejectValue("phone","error.phone.required");
		}
		
		String address = joinform.getAddress();
		if(address==null||address.equals("")) {
			errors.rejectValue("address","error.address.required");
		}
		
	}


}
