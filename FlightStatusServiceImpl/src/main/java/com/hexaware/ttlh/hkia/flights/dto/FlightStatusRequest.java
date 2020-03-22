/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author sudhirks@hexaware.com
 *
 */
public class FlightStatusRequest implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String airlineCode;
	private String arrivalAirportCode;
	private String departureAirportCode;
	private String flightNumber;
	private Date scheduledArrival;
	private Date scheduledDeparture;
	
	public FlightStatusRequest(){}
	
	public FlightStatusRequest(String airlineCode, String arrivalAirportCode, String departureAirportCode,
			String flightNumber, Date scheduledArrival, Date scheduledDeparture) {
		super();
		this.airlineCode = airlineCode;
		this.arrivalAirportCode = arrivalAirportCode;
		this.departureAirportCode = departureAirportCode;
		this.flightNumber = flightNumber;
		this.scheduledArrival = scheduledArrival;
		this.scheduledDeparture = scheduledDeparture;
	}
	public String getAirlineCode() {
		return airlineCode;
	}
	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}
	public String getArrivalAirportCode() {
		return arrivalAirportCode;
	}
	public void setArrivalAirportCode(String arrivalAirportCode) {
		this.arrivalAirportCode = arrivalAirportCode;
	}
	public String getDepartureAirportCode() {
		return departureAirportCode;
	}
	public void setDepartureAirportCode(String departureAirportCode) {
		this.departureAirportCode = departureAirportCode;
	}
	public String getFlightNumber() {
		return flightNumber;
	}
	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}
	public Date getScheduledArrival() {
		return scheduledArrival;
	}
	public void setScheduledArrival(Date scheduledArrival) {
		this.scheduledArrival = scheduledArrival;
	}
	public Date getScheduledDeparture() {
		return scheduledDeparture;
	}
	public void setScheduledDeparture(Date scheduledDeparture) {
		this.scheduledDeparture = scheduledDeparture;
	}

	@Override
	public String toString() {
		return "FlightStatusRequest [airlineCode=" + airlineCode + ", arrivalAirportCode=" + arrivalAirportCode
				+ ", departureAirportCode=" + departureAirportCode + ", flightNumber=" + flightNumber
				+ ", scheduledArrival=" + scheduledArrival + ", scheduledDeparture=" + scheduledDeparture + "]";
	}
}
