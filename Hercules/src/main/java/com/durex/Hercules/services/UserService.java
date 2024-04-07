package com.durex.hercules.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.durex.hercules.dto.UserDTO;
import com.durex.hercules.entities.User;
import com.durex.hercules.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public List<UserDTO> findAll() {
		List<User> result = userRepository.findAll();
		List<UserDTO> dto = result.stream().map(x -> new UserDTO(x)).toList();
		return dto;
	}

}
