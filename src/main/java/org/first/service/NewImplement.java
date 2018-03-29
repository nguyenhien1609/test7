package org.first.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.first.model.news;
import org.first.model.user;
import org.first.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class NewImplement implements NewService{
	
	@Autowired
	NewsRepository newsRepository;
	
	@Override
	@Transactional
	public Iterable<news> findAll() {
		
		return newsRepository.findAll();
	}
	@Override
	public Iterator<news> findAlls() {
		Iterable<news> u= newsRepository.findAll();
		return u.iterator();		
	}
	@Override
	public List<news> search(String q) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public news findOne(int id) {
		
		return null;
	}

	@Override
	public void save(news n) {
		newsRepository.save(n);
	}

	@Override
	public void delete(int id) {
		newsRepository.deleteById(id);		
	}
	@Override
	public int getIdMax(){
		
		int id = 0;
		List<news> listNews=(List<news>) findAll();
		List<Integer> listId= new ArrayList<Integer>();
		for(news n:listNews){
			listId.add(n.getNewID());
		}
		if (listId != null && !listId.isEmpty()) {
			return listId.get(listId.size()-1);
	     }
		return id;
	}
	@Override
	public news findById(int id){
		Iterator<news> listUser= findAlls();	
		
		while(listUser.hasNext()){
			news u=listUser.next();
			if(u.getNewID()==id){
				return u;
			}
		}
		return null;
	}

}
