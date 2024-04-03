package com.durex.Hercules.entities;

import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "eUser")
public class Usuario {
	
	@Id
	private String email;
	private String userName;
	private String password;
	private String nome;
	
	
	public Usuario() {
		
	}

	public Usuario(String email, String userName, String password, String nome) {
		super();
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNome() {
		return nome; 
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public int hashCode() {
		return Objects.hash(email, nome, password, userName);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		return Objects.equals(email, other.email) && Objects.equals(nome, other.nome)
				&& Objects.equals(password, other.password) && Objects.equals(userName, other.userName);
	}
	
		
	
}
