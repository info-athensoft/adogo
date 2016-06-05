package com.adogo.uaas.exception;

@SuppressWarnings("serial")
public class UserAccountExistException extends RuntimeException {
	
	public UserAccountExistException()  {}
	
    public UserAccountExistException(String message) {
        super(message);
    }
}
