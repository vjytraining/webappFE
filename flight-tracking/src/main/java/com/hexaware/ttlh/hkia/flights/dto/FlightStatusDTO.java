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
public class FlightStatusDTO implements Serializable {

	private static final long serialVersionUID = 1L;

	private Date actualArrival;
	private Date actualDeparture;
	private String aircraftType;
	private String airlineCode;
	private String arrivalAirportCode;
	private String arrivalGate;
	private String departureAirportCode;
	private String departureGate;
	private Date estimatedArrival;
	private Date estimatedDeparture;
	private String flightNumber;
	private String flightStatus;
	private int id;
	private Date scheduledArrival;
	private Date scheduledDeparture;

	public FlightStatusDTO() {
	}

	public FlightStatusDTO(Date actualArrival, Date actualDeparture, String aircraftType, String airlineCode,
			String arrivalAirportCode, String arrivalGate, String departureAirportCode, String departureGate,
			Date estimatedArrival, Date estimatedDeparture, String flightNumber, String flightStatus, int id,
			Date scheduledArrival, Date scheduledDeparture) {
		super();
		this.actualArrival = actualArrival;
		this.actualDeparture = actualDeparture;
		this.aircraftType = aircraftType;
		this.airlineCode = airlineCode;
		this.arrivalAirportCode = arrivalAirportCode;
		this.arrivalGate = arrivalGate;
		this.departureAirportCode = departureAirportCode;
		this.departureGate = departureGate;
		this.estimatedArrival = estimatedArrival;
		this.estimatedDeparture = estimatedDeparture;
		this.flightNumber = flightNumber;
		this.flightStatus = flightStatus;
		this.id = id;
		this.scheduledArrival = scheduledArrival;
		this.scheduledDeparture = scheduledDeparture;
	}



	public Date getActualArrival() {
		return actualArrival;
	}

	public Date getActualDeparture() {
		return actualDeparture;
	}

	public String getAircraftType() {
		return aircraftType;
	}

	public String getAirlineCode() {
		return airlineCode;
	}

	public String getArrivalAirportCode() {
		return arrivalAirportCode;
	}

	public String getArrivalGate() {
		return arrivalGate;
	}

	public String getDepartureAirportCode() {
		return departureAirportCode;
	}

	public String getDepartureGate() {
		return departureGate;
	}

	public Date getEstimatedArrival() {
		return estimatedArrival;
	}

	public Date getEstimatedDeparture() {
		return estimatedDeparture;
	}

	public String getFlightNumber() {
		return flightNumber;
	}

	public String getFlightStatus() {
		return flightStatus;
	}

	public int getId() {
		return id;
	}

	public Date getScheduledArrival() {
		return scheduledArrival;
	}

	public Date getScheduledDeparture() {
		return scheduledDeparture;
	}

	public void setActualArrival(Date actualArrival) {
		this.actualArrival = actualArrival;
	}

	public void setActualDeparture(Date actualDeparture) {
		this.actualDeparture = actualDeparture;
	}

	public void setAircraftType(String aircraftType) {
		this.aircraftType = aircraftType;
	}

	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}

	public void setArrivalAirportCode(String arrivalAirportCode) {
		this.arrivalAirportCode = arrivalAirportCode;
	}

	public void setArrivalGate(String arrivalGate) {
		this.arrivalGate = arrivalGate;
	}

	public void setDepartureAirportCode(String departureAirportCode) {
		this.departureAirportCode = departureAirportCode;
	}

	public void setDepartureGate(String departureGate) {
		this.departureGate = departureGate;
	}

	public void setEstimatedArrival(Date estimatedArrival) {
		this.estimatedArrival = estimatedArrival;
	}

	public void setEstimatedDeparture(Date estimatedDeparture) {
		this.estimatedDeparture = estimatedDeparture;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

	public void setFlightStatus(String flightStatus) {
		this.flightStatus = flightStatus;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setScheduledArrival(Date scheduledArrival) {
		this.scheduledArrival = scheduledArrival;
	}

	public void setScheduledDeparture(Date scheduledDeparture) {
		this.scheduledDeparture = scheduledDeparture;
	}
}
