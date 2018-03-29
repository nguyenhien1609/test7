package org.first.service;

import java.util.Iterator;
import java.util.List;

import org.first.model.user;

public interface userService {
	Iterator<user> findAll();
	List<user> search(String q);
	user findOne(int id);
	void save(user contact);
	void delete(int id);
	user FindByUser(String userName, String password);
	
}
