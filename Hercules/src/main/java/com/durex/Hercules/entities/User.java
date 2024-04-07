/**
 * 
 */
package com.durex.hercules.entities;

import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


/**
 * @author eduardo.lopes
 *
 */
@Entity
@Table(name = "eUser") 
public class User {
	@Id
	private String email;
	private String password;
	
	public User(String email, String password) {		
		this.email = email;
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}	
	
	public void setEmai(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(email, password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(email, other.email) && Objects.equals(password, other.password);
	}

}
