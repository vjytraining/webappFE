package com.hexaware.ttlh.hkia.flights.service.impl;

import com.hexaware.ttlh.hkia.flights.dto.FlightStatusDTO;
import com.hexaware.ttlh.hkia.flights.dto.FlightStatusRequest;
import com.hexaware.ttlh.hkia.flights.dto.FlightStatusResponse;
import com.hexaware.ttlh.hkia.flights.entity.FlightStatusPO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
public class FlightStatusServiceImplController {
	 @Autowired
	 private FlightStatusServiceImpl service;
	 @RequestMapping("/getFlightStatuses")
	public FlightStatusResponse getFlightStatuses(@RequestBody FlightStatusRequest request) throws Exception {
	 	 	return service.getFlightStatuses(request);
	 }


}
