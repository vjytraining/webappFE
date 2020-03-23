package com.hexaware.ttlh.hkia.flights.rs.impl;


import com.hexaware.ttlh.hkia.flights.ws.request.FlightStatusRequest;
import com.hexaware.ttlh.hkia.flights.ws.response.FlightStatusResponse;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestBody;

import javax.servlet.ServletContext;
import javax.ws.rs.core.Context;

@RestController
public class FlightsStatusResourceController {
	@Context 
	ServletContext context;

	 @Autowired
	 private FlightsStatusResource service;
	 @RequestMapping("/getstatus/json")
	public FlightStatusResponse getStatus( @RequestBody FlightStatusRequest request) throws Exception {
	 	 	return service.getStatus(context, request);
	 }

	 @RequestMapping(value = "/getstatus/xml", consumes = "application/xml", produces = "application/xml")
	public FlightStatusResponse getStatusXml( @RequestBody FlightStatusRequest request) throws Exception {
	 	 	return service.getStatusXml(context, request);
	 }


}
