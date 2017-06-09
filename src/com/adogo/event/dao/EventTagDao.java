package com.adogo.event.dao;

import java.util.List;

import com.adogo.event.entity.EventTag;

public interface EventTagDao {
	public List<EventTag> findAll();
	public EventTag findById(long tagId);
	public List<EventTag> findByEventUUID(String eventUUID);
}
