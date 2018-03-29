package org.first.service;

import java.util.Iterator;
import java.util.List;

import org.first.model.user;

import org.first.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImplement implements userService{
	@Autowired
	UserRepository userRepository;

	@Override
	public Iterator<user> findAll() {		
		Iterable<user> u= userRepository.findAll();
		return u.iterator();
	}

	@Override
	public List<user> search(String q) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public user findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(user contact) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	@Transactional
	public user FindByUser(String userName, String password){
		Iterator<user> listUser= findAll();	
	
		while(listUser.hasNext()){
			user u=listUser.next();
			if(u.getUserName().equals(userName)&&u.getPass().equals(password)){
				return u;
			}
		}
		return null;
	}

}
