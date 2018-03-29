package org.first.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nguoidung")
public class user implements Serializable {
	private static final long serialVersionUID=1;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Column(name="taikhoan",nullable=false)
	private String userName;

	@Column(name="matkhau",nullable=false)
	private String pass;
	

	@Column(name="tendu",nullable=false)
	private String fullName;


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	
	
	
	
}
