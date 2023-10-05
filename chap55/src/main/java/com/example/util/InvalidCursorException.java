package com.example.util;

public class InvalidCursorException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	public InvalidCursorException() {
		super("부정확한 Cursor 값입니다.");
	}
	public InvalidCursorException(String msg) {
		super(msg);
	}
	
}
