/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.service;

/**
 * @author sudhirks@hexaware.com
 */
public class FlightStatusException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private String message;
	
	public FlightStatusException(Throwable e){
		super();
		if(e != null){
			super.initCause(e);
			if(e.getMessage() != null){
				String temp = e.getMessage();
				int lengthOfTemp = temp.length();
				int lastIndexOfColon = temp.lastIndexOf(":");
				
				if(lastIndexOfColon < lengthOfTemp){
					message = e.getMessage().substring(lastIndexOfColon + 1);
				}else{
					message = e.getMessage();
				}
				
			}
			if(message == null || message.isEmpty()){
				message = e.getMessage();
			}
			
			if(message == null || message.isEmpty()){
				message = e.getClass().getName();
			}
		}else{
			message = "Unknown error.";
		}
		
	}
	
	public String getMessage(){
		return message;
	}

}
