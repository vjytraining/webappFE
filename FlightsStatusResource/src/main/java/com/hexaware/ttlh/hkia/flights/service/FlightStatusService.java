/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.service;

import com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest;
import com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse;

/**
 * 
 * @author sudhirks@hexaware.com
 *
 */
public interface FlightStatusService {
	FlightStatusResponse getFlightStatuses(FlightStatusRequest request) throws FlightStatusException;
}
