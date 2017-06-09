package com.adogo.event.dao;

import java.util.List;

import com.adogo.event.entity.Event;

public interface NewsDao {
	public List<Event> findAll();
	public Event findById(long globalId);
	public Event findByEventUUID(String eventUUID);
	
	public void create();
	public void update();
	public void delete();
	
}
