package com.adogo.uaas.exception;

@SuppressWarnings("serial")
public class IncorrectUserNameOrPasswordException extends RuntimeException {
	
	public IncorrectUserNameOrPasswordException()  {}
	
    public IncorrectUserNameOrPasswordException(String message) {
        super(message);
    }
}
