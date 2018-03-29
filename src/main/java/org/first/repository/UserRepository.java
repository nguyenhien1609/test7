package org.first.repository;


import org.first.model.user;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<user, Integer>{
	
}
