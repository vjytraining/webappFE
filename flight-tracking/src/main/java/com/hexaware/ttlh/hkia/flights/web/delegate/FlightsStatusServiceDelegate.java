/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.web.delegate;

import java.io.*;
import java.util.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.client.RestClientException;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Pattern;

import javax.naming.InitialContext;

import com.hexaware.ttlh.hkia.flights.dto.FlightStatusDTO;
import com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest;
import com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse;
import com.hexaware.ttlh.hkia.flights.util.FlightStatusException;
import com.hexaware.ttlh.hkia.flights.web.bean.DateTimeBean;
import com.hexaware.ttlh.hkia.flights.web.bean.FlightStatusBean;
import com.hexaware.ttlh.hkia.flights.web.properties.AirlinesReader;
import com.hexaware.ttlh.hkia.flights.web.properties.AirportsReader;

/**
 * 
 * @author sudhirks@hexaware.com
 *
 */
public class FlightsStatusServiceDelegate {
	
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMM yyyy");
	SimpleDateFormat simpleTimeFormat = new SimpleDateFormat("HH:mm");
	
	public List<FlightStatusBean> getFlightStatuses(String origin, String destination, String date){
		List<FlightStatusBean> res = null;
		FlightStatusRequest request = new FlightStatusRequest();
		request.setDepartureAirportCode(origin);
		request.setArrivalAirportCode(destination);
		request.setScheduledDeparture(convert(date));
		
		try {
			InitialContext ic = new InitialContext();

Properties propApp = new Properties(); 
String urlFromProp = ""; 
try{
	propApp.load(this.getClass().getClassLoader().getResource("application.properties").openStream());
	urlFromProp = propApp.getProperty("RestBaseUrl"); 
}catch(IOException ex){ 
	ex.printStackTrace(); 
}
  
String uri = urlFromProp + "getFlightStatuses";
RestTemplate restTemplate = new RestTemplate(); 
try {   
	res = convert(restTemplate.postForObject(uri, request, FlightStatusResponse.class)); 
} catch (RestClientException e) {   
	e.printStackTrace();   
}   

		}catch(Exception e){
			e.printStackTrace();
			res = new ArrayList<FlightStatusBean>();
		}
		return res;
	}
	
	public FlightStatusBean getFlightDetails(String airlineCode, String origin, String flightNumber, String date){
		FlightStatusBean res = null;
		FlightStatusRequest request = new FlightStatusRequest();
		request.setAirlineCode(airlineCode);
		request.setDepartureAirportCode(origin);
		request.setFlightNumber(flightNumber);
		request.setScheduledDeparture(convert(date));
		
		try {
			InitialContext ic = new InitialContext();

Properties propApp = new Properties(); 
String urlFromProp = ""; 
try{
	propApp.load(this.getClass().getClassLoader().getResource("application.properties").openStream());
	urlFromProp = propApp.getProperty("RestBaseUrl"); 
}catch(IOException ex){ 
	ex.printStackTrace(); 
}
  
String uri = urlFromProp + "getFlightStatuses";
RestTemplate restTemplate = new RestTemplate(); 
try {   
	res = convertDetails(restTemplate.postForObject(uri, request, FlightStatusResponse.class)); 
} catch (RestClientException e) {   
	e.printStackTrace();   
}   

		}catch(Exception e){
			e.printStackTrace();
		}
		return res;
	}
	
	private FlightStatusBean convertDetails(FlightStatusResponse res){ 
		FlightStatusBean bean = null;
		if(res != null && res.getFlightStatuses() != null){
			for(FlightStatusDTO dto : res.getFlightStatuses()){
				bean = convert(dto);
			}
		}
		return bean;
	}
	
	private List<FlightStatusBean> convert(FlightStatusResponse res){
		List<FlightStatusBean> beans = new ArrayList<FlightStatusBean>();
		if(res != null && res.getFlightStatuses() != null){
			for(FlightStatusDTO dto : res.getFlightStatuses()){
				beans.add(convert(dto));
			}
		}
		return beans;
	}
	
	private FlightStatusBean convert(FlightStatusDTO dto){
		FlightStatusBean bean = new FlightStatusBean();
		bean.setActualArrival(convert(dto.getActualArrival()));
		bean.setActualDeparture(convert(dto.getActualDeparture()));
		bean.setAircraftType(dto.getAircraftType());
		bean.setAirlineCode(dto.getAirlineCode());
		try {
			bean.setAirlineName(AirlinesReader.getAirline(dto.getAirlineCode()));
		} catch (FlightStatusException e) {
			e.printStackTrace();
		}
		bean.setArrivalAirportCode(dto.getArrivalAirportCode());
		try {
			bean.setArrivalAirportName(AirportsReader.getAirport(dto.getArrivalAirportCode()));
		} catch (FlightStatusException e) {
			e.printStackTrace();
		}
		bean.setArrivalGate(dto.getArrivalGate());
		bean.setDepartureAirportCode(dto.getDepartureAirportCode());
		try {
			bean.setDepartureAirportName(AirportsReader.getAirport(dto.getDepartureAirportCode()));
		} catch (FlightStatusException e) {
			e.printStackTrace();
		}
		bean.setDepartureGate(dto.getDepartureGate());
		bean.setEstimatedArrival(convert(dto.getEstimatedArrival()));
		bean.setEstimatedDeparture(convert(dto.getEstimatedDeparture()));
		bean.setFlightNumber(dto.getFlightNumber());
		bean.setFlightStatus(dto.getFlightStatus());
		bean.setScheduledArrival(convert(dto.getScheduledArrival()));
		bean.setScheduledDeparture(convert(dto.getScheduledDeparture()));
		return bean;
	}
	
	private DateTimeBean convert(Date date){
		DateTimeBean bean = new DateTimeBean();
		if(date != null){
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			Date newDate = new Date(cal.getTimeInMillis());
			bean.setDateStr(simpleDateFormat.format(newDate));
			bean.setTimeStr(simpleTimeFormat.format(newDate));
		}else{
			bean.setDateStr("");
			bean.setTimeStr("");
		}
		return bean;
	}
	
	private Date convert(String dateIn){
		
		Date date = null;
		Calendar cal = Calendar.getInstance();
		if(dateIn != null && dateIn.length() == 10){
			String[] tokens = dateIn.split(Pattern.quote("/"));
			cal.set(Calendar.YEAR, Integer.parseInt(tokens[2]));
			cal.set(Calendar.MONTH, (Integer.parseInt(tokens[0])));
			cal.add(Calendar.MONTH, -1);
			cal.set(Calendar.DATE, Integer.parseInt(tokens[1]));
			cal.set(Calendar.HOUR_OF_DAY,0);
			cal.set(Calendar.MINUTE,0);
			date = new Date(cal.getTimeInMillis()); 
		}

		return date;
	}
}
