package com.adogo.uaas.exception;

@SuppressWarnings("serial")
public class InvalidKeyValueException extends RuntimeException {
	
	public InvalidKeyValueException()  {}
	
    public InvalidKeyValueException(String message) {
        super(message);
    }
}
