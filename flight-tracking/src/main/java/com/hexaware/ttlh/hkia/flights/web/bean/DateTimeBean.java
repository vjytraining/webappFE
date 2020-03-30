/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.web.bean;

import java.io.Serializable;

/**
 * 
 * @author sudhirks@hexaware.com
 *
 */
public class DateTimeBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String dateStr;
	private String timeStr;
	
	public DateTimeBean(){}
	
	public String getDateStr() {
		return dateStr;
	}
	public String getTimeStr() {
		return timeStr;
	}
	public void setDateStr(String dateStr) {
		this.dateStr = dateStr;
	}
	public void setTimeStr(String timeStr) {
		this.timeStr = timeStr;
	}
	
}
