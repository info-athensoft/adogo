package com.adogo.uaas.exception;

@SuppressWarnings("serial")
public class NoSuchUserAccountException extends RuntimeException {
	
	public NoSuchUserAccountException()  {}
	
    public NoSuchUserAccountException(String message) {
        super(message);
    }
}
