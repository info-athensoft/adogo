package com.athensoft.util.id;

import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/**
 * UUID utilities
 * @author Athens
 *
 */
public class UUIDHelper {
	
	/**
	 * generate a UUID without '-' symbol
	 * @return
	 */
	public static String getUUID(){
		final String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		return uuid;
	}
	
	/**
	 * generate a UUID of generation 4
	 * @return
	 */
	public static String getUUID4(){
		//TODO
		return null;
	}
	
	private static final AtomicLong TS = new AtomicLong();
	
	public static long getUniqueLongId() {      
		long micros = System.currentTimeMillis() * 1000;
	    for ( ; ; ) {
	        long value = TS.get();
	        if (micros <= value)
	            micros = value + 1;
	        if (TS.compareAndSet(value, micros))
	            return micros;
	    }
    }
	
	public static void main(String[] args){
		System.out.println(getUUID());
		System.out.println(getUUID());
		System.out.println(getUUID());
	}
}
