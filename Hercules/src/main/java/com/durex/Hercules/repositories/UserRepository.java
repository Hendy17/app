package com.durex.hercules.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.durex.hercules.entities.User;

public interface UserRepository extends JpaRepository<User, String> {
	
	

}
