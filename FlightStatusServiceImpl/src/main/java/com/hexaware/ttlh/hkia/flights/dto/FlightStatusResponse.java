/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.dto;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @author sudhirks@hexaware.com
 *
 */
public class FlightStatusResponse implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private List<FlightStatusDTO> flightStatuses;

	public List<FlightStatusDTO> getFlightStatuses() {
		return flightStatuses;
	}

	public void setFlightStatuses(List<FlightStatusDTO> flightStatuses) {
		this.flightStatuses = flightStatuses;
	}

}
