package org.first.service;

import java.util.Iterator;
import java.util.List;

import org.first.model.news;



public interface NewService {
	Iterable<news> findAll();
	List<news> search(String q);
	news findOne(int id);
	void save(news contact);
	void delete(int id);
	int getIdMax();
	Iterator<news> findAlls();
	news findById(int id);
	
}
