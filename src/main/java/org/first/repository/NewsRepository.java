package org.first.repository;


import org.first.model.news;
import org.springframework.data.repository.CrudRepository;

public interface NewsRepository extends CrudRepository<news, Integer>{
	
}
