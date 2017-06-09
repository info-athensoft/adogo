package com.adogo.event.dao;

import java.util.List;

import com.adogo.event.entity.EventMedia;

public interface EventMediaDao {
	public List<EventMedia> findAll();
	public EventMedia findById(long globalId);
	public List<EventMedia> findByEventUUID(String eventUUID);
}
