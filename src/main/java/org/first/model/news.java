package org.first.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.google.api.client.util.DateTime;

@Entity

@Table(name="moi")
public class news implements Serializable{
	private static final long serialVersionUID=1;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Column(name="newID",nullable=false)
	private int newID;
	
	@Column(name="title",nullable=false)
	private String title;
	
	public int getNewID() {
		return newID;
	}

	public void setNewID(int newID) {
		this.newID = newID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name="Content",nullable=false)
	private String content;
	
	@Column(name="taikhoan",nullable=false)
	private String userName;
	
	
}

