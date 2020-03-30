/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.rs.impl;

import java.util.Date;
import java.util.Calendar;

import javax.servlet.ServletContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import com.hexaware.ttlh.hkia.flights.service.FlightStatusException;
import com.hexaware.ttlh.hkia.flights.service.FlightStatusServiceLocal;
import com.hexaware.ttlh.hkia.flights.ws.dto.DateTimeDTO;
import com.hexaware.ttlh.hkia.flights.ws.dto.FlightStatusDTO;
import com.hexaware.ttlh.hkia.flights.ws.request.FlightStatusRequest;
import com.hexaware.ttlh.hkia.flights.ws.response.FlightStatusResponse;

import java.io.*;
import java.util.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.client.RestClientException;


/**
 * 
 * @author sudhirks@hexaware.com
 *
 */

import org.springframework.stereotype.Component; 


 @Component 
 @Path("/flightstatus")
	 public class FlightsStatusResource {
	
//	@EJB
	FlightStatusServiceLocal ejb;

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("getstatus/json")
	public FlightStatusResponse getStatus(@Context ServletContext context, FlightStatusRequest flightStatusRQ){
		FlightStatusResponse response = new com.hexaware.ttlh.hkia.flights.ws.response.ObjectFactory().createFlightStatusResponse();
		
		com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest request = new com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest();
		request.setAirlineCode(flightStatusRQ.getAirlineCode());
		request.setArrivalAirportCode(flightStatusRQ.getArrivalAirportCode());
		request.setDepartureAirportCode(flightStatusRQ.getDepartureAirportCode());
		request.setFlightNumber(flightStatusRQ.getFlightNumber());
		request.setScheduledArrival(convert(flightStatusRQ.getScheduledArrivalDateTime()));
		request.setScheduledDeparture(convert(flightStatusRQ.getScheduledDepartureDateTime()));
		
		try {
Properties propApp = new Properties(); 
InputStream istrm = null; 
String urlFromProp = ""; 
try{ 
	propApp.load(FlightsStatusResource.class.getClassLoader().getResource("application.properties").openStream()); 
	urlFromProp = propApp.getProperty("RestBaseUrl"); 
}catch(IOException ex){ 
	ex.printStackTrace(); 
} 
  
String uri = urlFromProp + "getFlightStatuses";			

RestTemplate restTemplate = new RestTemplate(); 
com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse res = null;  
try {   
	res = restTemplate.postForObject(uri, request, com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse.class); 
} catch (RestClientException e) {   
	e.printStackTrace();   
}   

			if(res != null && res.getFlightStatuses() != null ){
				for(com.hexaware.ttlh.hkia.flights.dto.FlightStatusDTO dto: res.getFlightStatuses()){
					FlightStatusDTO flightStatus = convert(dto);
					response.getFlightStatus().add(flightStatus);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return response;
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.APPLICATION_XML)
	@Path("getstatus/xml")
	public FlightStatusResponse getStatusXml(@Context ServletContext context, FlightStatusRequest flightStatusRQ){
		FlightStatusResponse response = new com.hexaware.ttlh.hkia.flights.ws.response.ObjectFactory().createFlightStatusResponse();
		
		com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest request = new com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest();
		request.setAirlineCode(flightStatusRQ.getAirlineCode());
		request.setArrivalAirportCode(flightStatusRQ.getArrivalAirportCode());
		request.setDepartureAirportCode(flightStatusRQ.getDepartureAirportCode());
		request.setFlightNumber(flightStatusRQ.getFlightNumber());
		request.setScheduledArrival(convert(flightStatusRQ.getScheduledArrivalDateTime()));
		request.setScheduledDeparture(convert(flightStatusRQ.getScheduledDepartureDateTime()));
		
		try {
Properties propApp = new Properties(); 
InputStream istrm = null; 
String urlFromProp = ""; 
try{ 
	propApp.load(FlightsStatusResource.class.getClassLoader().getResource("application.properties").openStream()); 
	urlFromProp = propApp.getProperty("RestBaseUrl"); 
}catch(IOException ex){ 
	ex.printStackTrace(); 
} 
  
String uri = urlFromProp + "getFlightStatuses";			

RestTemplate restTemplate = new RestTemplate(); 
com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse res = null;  
try {   
	res = restTemplate.postForObject(uri, request, com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse.class); 
} catch (RestClientException e) {   
	e.printStackTrace();   
}   

			if(res != null && res.getFlightStatuses() != null ){
				for(com.hexaware.ttlh.hkia.flights.dto.FlightStatusDTO dto: res.getFlightStatuses()){
					FlightStatusDTO flightStatus = convert(dto);
					response.getFlightStatus().add(flightStatus);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return response;
	}
	
	private FlightStatusDTO convert(com.hexaware.ttlh.hkia.flights.dto.FlightStatusDTO dto){
		com.hexaware.ttlh.hkia.flights.ws.dto.ObjectFactory objFac = new com.hexaware.ttlh.hkia.flights.ws.dto.ObjectFactory();
		FlightStatusDTO flightStatus = objFac.createFlightStatusDTO();
		
		flightStatus.setActualArrivalDateTime(convert(dto.getActualArrival()));
		flightStatus.setActualDepartureDateTime(convert(dto.getActualDeparture()));
		flightStatus.setAircraftType(dto.getAircraftType());
		flightStatus.setAirlineCode(dto.getAirlineCode());
		try {
			flightStatus.setAirlineName(AirlinesReader.getAirline(dto.getAirlineCode()));
		} catch (FlightStatusException e1) {
			e1.printStackTrace();
		}
		flightStatus.setArrivalAirportCode(dto.getArrivalAirportCode());
		flightStatus.setArrivalAirportGate(dto.getArrivalGate());
		try {
			flightStatus.setArrivalAirportName(AirportsReader.getAirport(dto.getArrivalAirportCode()));
		} catch (FlightStatusException e) {
			e.printStackTrace();
		}
		try {
			flightStatus.setDepartureAirportName(AirportsReader.getAirport(dto.getDepartureAirportCode()));
		} catch (FlightStatusException e) {
			e.printStackTrace();
		}
		flightStatus.setDepartureAirportCode(dto.getDepartureAirportCode());
		flightStatus.setDepartureAirportGate(dto.getDepartureGate());
		flightStatus.setEstimatedArrivalDateTime(convert(dto.getEstimatedArrival()));
		flightStatus.setEstimatedDepartureDateTime(convert(dto.getEstimatedDeparture()));
		flightStatus.setFlightNumber(dto.getFlightNumber());
		flightStatus.setFlightStatus(dto.getFlightStatus());
		flightStatus.setScheduledArrivalDateTime(convert(dto.getScheduledArrival()));
		flightStatus.setScheduledDepartureDateTime(convert(dto.getScheduledDeparture()));
		
		return flightStatus;
	}
	
	private DateTimeDTO convert(Date date){
		DateTimeDTO dateTimeDTO = null;
		if(date != null){
			com.hexaware.ttlh.hkia.flights.ws.dto.ObjectFactory objFac = new com.hexaware.ttlh.hkia.flights.ws.dto.ObjectFactory();
			dateTimeDTO = objFac.createDateTimeDTO();
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			dateTimeDTO.setDateValue(cal.get(Calendar.YEAR)*10000+(cal.get(Calendar.MONTH)+1)*100+cal.get(Calendar.DATE));
			dateTimeDTO.setTimeValue(cal.get(Calendar.HOUR_OF_DAY)*100+cal.get(Calendar.MINUTE));
		}
		
		return dateTimeDTO;
	}
	
	private Date convert(DateTimeDTO dto){
		Date date = null;
		Calendar cal = Calendar.getInstance();
		if(dto != null && dto.getDateValue() != null){
			cal.set(Calendar.YEAR, dto.getDateValue()/10000);
			cal.set(Calendar.MONTH, (dto.getDateValue()%10000)/100);
			cal.add(Calendar.MONTH, -1);
			cal.set(Calendar.DATE, dto.getDateValue()%100);
			if(dto.getTimeValue() != null){
				cal.set(Calendar.HOUR_OF_DAY,dto.getTimeValue()/100);
				cal.set(Calendar.MINUTE,dto.getTimeValue()%100);
			}else{
				cal.set(Calendar.HOUR_OF_DAY,0);
				cal.set(Calendar.MINUTE,0);
			}
			date = new Date(cal.getTimeInMillis()); 
		}

		return date;
	}
}
