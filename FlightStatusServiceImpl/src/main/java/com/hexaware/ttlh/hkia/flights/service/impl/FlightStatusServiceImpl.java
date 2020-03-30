/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.service.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.annotation.security.PermitAll;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TemporalType;

import com.hexaware.ttlh.hkia.flights.dto.FlightStatusDTO;
import com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest;
import com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse;
import com.hexaware.ttlh.hkia.flights.entity.FlightStatusPO;
import com.hexaware.ttlh.hkia.flights.service.FlightStatusException;
import com.hexaware.ttlh.hkia.flights.service.FlightStatusService;

/**
 * 
 * @author sudhirks@hexaware.com
 *
 */
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.client.RestClientException;
import java.util.List;



@Repository 
 @Transactional 
 @EntityScan("com.hexaware.ttlh.hkia.flights.entity")
 public class FlightStatusServiceImpl implements FlightStatusService {
	
	@Resource
	
	@PersistenceContext
	private EntityManager entityManager;

	@PermitAll
	public FlightStatusResponse getFlightStatuses(FlightStatusRequest request) throws FlightStatusException {
		FlightStatusResponse response = new FlightStatusResponse();
		List<FlightStatusDTO> flightStatuses = null;
		try{
			StringBuffer query = new StringBuffer();
			
			query.append("SELECT t FROM ").append(FlightStatusPO.class.getName()).append(" t where ");
			
			if(request.getScheduledDeparture() != null){
				query.append(" (t.scheduledDeparture BETWEEN :scheduledDepartureStart and :scheduledDepartureEnd)");
			}else if(request.getScheduledArrival() != null){
				
				query.append(" (t.scheduledArrival BETWEEN :scheduledArrivalStart and :scheduledArrivalEnd)");
			}
			
			if(request.getAirlineCode() != null && !request.getAirlineCode().isEmpty()){
				query.append(" and (t.airlineCode = :airlineCode)");
			}
			
			if(request.getFlightNumber() != null && !request.getFlightNumber().isEmpty()){
				query.append(" and (t.flightNumber = :flightNumber)");
			}
			
			if(request.getDepartureAirportCode() != null && !request.getDepartureAirportCode().isEmpty()){
				query.append(" and (t.departureAirportCode = :departureAirportCode)");
			}
			
			if(request.getArrivalAirportCode() != null && !request.getArrivalAirportCode().isEmpty()){
				query.append(" and (t.arrivalAirportCode = :arrivalAirportCode)");
			}
			
			query.append(" ORDER BY t.scheduledDeparture ");
			
			Query emQuery = this.entityManager.createQuery(query.toString());
			
			if(request.getScheduledDeparture() != null){
				Calendar c = Calendar.getInstance(); 
				c.setTime(request.getScheduledDeparture()); 
				c.add(Calendar.DATE, 1);
				emQuery.setParameter("scheduledDepartureStart", request.getScheduledDeparture(), TemporalType.DATE);
				emQuery.setParameter("scheduledDepartureEnd", new java.sql.Date(c.getTimeInMillis()), TemporalType.DATE);
			}else if(request.getScheduledArrival() != null){
				Calendar c = Calendar.getInstance(); 
				c.setTime(request.getScheduledArrival()); 
				c.add(Calendar.DATE, 1);
				emQuery.setParameter("scheduledArrivalStart", request.getScheduledArrival(), TemporalType.DATE);
				emQuery.setParameter("scheduledArrivalEnd", new java.sql.Date(c.getTimeInMillis()), TemporalType.DATE);
			}
			
			if(request.getAirlineCode() != null && !request.getAirlineCode().isEmpty()){
				emQuery.setParameter("airlineCode", request.getAirlineCode());
			}
			
			if(request.getFlightNumber() != null && !request.getFlightNumber().isEmpty()){
				emQuery.setParameter("flightNumber", request.getFlightNumber());
			}
			
			if(request.getDepartureAirportCode() != null && !request.getDepartureAirportCode().isEmpty()){
				emQuery.setParameter("departureAirportCode", request.getDepartureAirportCode());
			}
			
			if(request.getArrivalAirportCode() != null && !request.getArrivalAirportCode().isEmpty()){
				emQuery.setParameter("arrivalAirportCode", request.getArrivalAirportCode());
			}
			
			List<FlightStatusPO> flightStatusPOs = emQuery.getResultList();
			
			if(flightStatusPOs != null){
				flightStatuses = convert(flightStatusPOs);
			}
		}catch(Exception e){
			e.printStackTrace();
			throw new FlightStatusException(e);
		}
		
		response.setFlightStatuses(flightStatuses);
		
		return response;
	}
	
	private List<FlightStatusDTO> convert(List<FlightStatusPO> flightStatuses){
		List<FlightStatusDTO> flightStatusDtos = new ArrayList<FlightStatusDTO>();
		
		for(FlightStatusPO flightStatusPO: flightStatuses){
			flightStatusDtos.add(convert(flightStatusPO));
		}
		
		return flightStatusDtos;
	}
	
	private FlightStatusDTO convert(FlightStatusPO po){
		FlightStatusDTO dto = new FlightStatusDTO();
		
		dto.setActualArrival(po.getActualArrival());
		dto.setActualDeparture(po.getActualDeparture());
		dto.setAircraftType(po.getAircraftType());
		dto.setAirlineCode(po.getAirlineCode());
		dto.setArrivalAirportCode(po.getArrivalAirportCode());
		dto.setArrivalGate(po.getArrivalGate());
		dto.setDepartureAirportCode(po.getDepartureAirportCode());
		dto.setDepartureGate(po.getDepartureGate());
		dto.setEstimatedArrival(po.getEstimatedArrival());
		dto.setEstimatedDeparture(po.getEstimatedDeparture());
		dto.setFlightNumber(po.getFlightNumber());
		dto.setFlightStatus(po.getFlightStatus());
		dto.setId(po.getId());
		dto.setScheduledArrival(po.getScheduledArrival());
		dto.setScheduledDeparture(po.getScheduledDeparture());
		
		return dto;
	}

}
