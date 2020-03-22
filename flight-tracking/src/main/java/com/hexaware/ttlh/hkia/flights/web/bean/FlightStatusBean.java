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
public class FlightStatusBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private DateTimeBean actualArrival;
	private DateTimeBean actualDeparture;
	private String aircraftType;
	private String airlineCode;
	private String airlineName;
	private String arrivalAirportCode;
	private String arrivalAirportName;
	private String arrivalGate;
	private String departureAirportCode;
	private String departureAirportName;
	private String departureGate;
	private DateTimeBean estimatedArrival;
	private DateTimeBean estimatedDeparture;
	private String flightNumber;
	private String flightStatus;
	private int id;
	private DateTimeBean scheduledArrival;
	private DateTimeBean scheduledDeparture;
	
	public DateTimeBean getActualArrival() {
		return actualArrival;
	}
	public DateTimeBean getActualDeparture() {
		return actualDeparture;
	}
	public String getAircraftType() {
		return aircraftType;
	}
	public String getAirlineCode() {
		return airlineCode;
	}
	public String getAirlineName() {
		return airlineName;
	}
	public String getArrivalAirportCode() {
		return arrivalAirportCode;
	}
	public String getArrivalAirportName() {
		return arrivalAirportName;
	}
	public String getArrivalGate() {
		return arrivalGate;
	}
	public String getDepartureAirportCode() {
		return departureAirportCode;
	}
	public String getDepartureAirportName() {
		return departureAirportName;
	}
	public String getDepartureGate() {
		return departureGate;
	}
	public DateTimeBean getEstimatedArrival() {
		return estimatedArrival;
	}
	public DateTimeBean getEstimatedDeparture() {
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
	public DateTimeBean getScheduledArrival() {
		return scheduledArrival;
	}
	public DateTimeBean getScheduledDeparture() {
		return scheduledDeparture;
	}
	public void setActualArrival(DateTimeBean actualArrival) {
		this.actualArrival = actualArrival;
	}
	public void setActualDeparture(DateTimeBean actualDeparture) {
		this.actualDeparture = actualDeparture;
	}
	public void setAircraftType(String aircraftType) {
		this.aircraftType = aircraftType;
	}
	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}
	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}
	public void setArrivalAirportCode(String arrivalAirportCode) {
		this.arrivalAirportCode = arrivalAirportCode;
	}
	public void setArrivalAirportName(String arrivalAirportName) {
		this.arrivalAirportName = arrivalAirportName;
	}
	public void setArrivalGate(String arrivalGate) {
		this.arrivalGate = arrivalGate;
	}
	public void setDepartureAirportCode(String departureAirportCode) {
		this.departureAirportCode = departureAirportCode;
	}
	public void setDepartureAirportName(String departureAirportName) {
		this.departureAirportName = departureAirportName;
	}
	public void setDepartureGate(String departureGate) {
		this.departureGate = departureGate;
	}
	public void setEstimatedArrival(DateTimeBean estimatedArrival) {
		this.estimatedArrival = estimatedArrival;
	}
	public void setEstimatedDeparture(DateTimeBean estimatedDeparture) {
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
	public void setScheduledArrival(DateTimeBean scheduledArrival) {
		this.scheduledArrival = scheduledArrival;
	}
	public void setScheduledDeparture(DateTimeBean scheduledDeparture) {
		this.scheduledDeparture = scheduledDeparture;
	}
}
