package com.adogo.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.adogo.event.dao.EventMediaDao;
import com.adogo.event.entity.EventMedia;

@Service
public class EventMediaService {
	@Autowired
	@Qualifier("eventMediaDaoJDBCImpl")
	private EventMediaDao eventMediaDao;

	public void setEventMediaDao(EventMediaDao eventMediaDao) {
		this.eventMediaDao = eventMediaDao;
	}
	
	public List<EventMedia> getEventMediaByEventUUID(String eventUUID){
		return eventMediaDao.findByEventUUID(eventUUID);
	}
}
