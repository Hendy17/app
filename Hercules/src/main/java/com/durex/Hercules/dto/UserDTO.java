package com.durex.hercules.dto;

import com.durex.hercules.entities.User;

public class UserDTO {
	private String email;
	private String password;

	public UserDTO() {

	}

	public UserDTO(User entity) {
		this.email = entity.getEmail();
		this.password = entity.getPassword();
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

}
