/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @author sudhirks@hexaware.com
 *
 */
@Entity
@Table(name = "FLIGHT_STATUS")
public class FlightStatusPO implements Serializable {

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

	public FlightStatusPO() {
	}

	public FlightStatusPO(Date actualArrival, Date actualDeparture, String aircraftType, String airlineCode,
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


	@Column(name = "actual_arrival")
	public Date getActualArrival() {
		return actualArrival;
	}

	@Column(name = "actual_departure")
	public Date getActualDeparture() {
		return actualDeparture;
	}

	@Column(name = "aircraft_type")
	public String getAircraftType() {
		return aircraftType;
	}

	@Column(name = "airline_code")
	public String getAirlineCode() {
		return airlineCode;
	}

	@Column(name = "arrival_airport_code")
	public String getArrivalAirportCode() {
		return arrivalAirportCode;
	}

	@Column(name = "arrival_gate")
	public String getArrivalGate() {
		return arrivalGate;
	}

	@Column(name = "departure_airport_Code")
	public String getDepartureAirportCode() {
		return departureAirportCode;
	}

	@Column(name = "departure_gate")
	public String getDepartureGate() {
		return departureGate;
	}

	@Column(name = "estimated_arrival")
	public Date getEstimatedArrival() {
		return estimatedArrival;
	}

	@Column(name = "estimated_departure")
	public Date getEstimatedDeparture() {
		return estimatedDeparture;
	}

	@Column(name = "flight_number")
	public String getFlightNumber() {
		return flightNumber;
	}

	@Column(name = "flight_status")
	public String getFlightStatus() {
		return flightStatus;
	}

	@Id
	@Column(name = "id", nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}

	@Column(name = "scheduled_arrival")
	public Date getScheduledArrival() {
		return scheduledArrival;
	}

	@Column(name = "scheduled_departure")
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
