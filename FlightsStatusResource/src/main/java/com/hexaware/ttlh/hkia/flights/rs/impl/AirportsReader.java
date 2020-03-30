/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.rs.impl;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import com.hexaware.ttlh.hkia.flights.service.FlightStatusException;

/**
 * The Class ParserConfiguration.
 * @author sudhirks@hexaware.com
 */
public class AirportsReader extends Properties {

	private static final long serialVersionUID = 4102200430394127441L;

	/** The parser configuration. */
	private static AirportsReader airportsReader;

	/**
	 * Gets the single instance of ParserConfiguration.
	 *
	 * @return single instance of ParserConfiguration
	 * @throws FileNotFoundException the file not found exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public synchronized static AirportsReader getInstance()
			throws FileNotFoundException, IOException {

		if (airportsReader == null) {
			airportsReader = new AirportsReader();
			airportsReader.load(airportsReader.getClass()
					.getClassLoader().getResource("resources/airports.properties")
					.openStream());
		}
		return airportsReader;
	}

	/**
	 * Gets the parser file path.
	 *
	 * @param identifier the identifier
	 * @return the parser file path
	 * @throws ParserException the parser exception
	 */
	public static String getAirport(String airportCode) throws FlightStatusException {
		try {
			return AirportsReader.getInstance().getProperty(airportCode);
		} catch (IOException e) {
			throw new FlightStatusException(e);
		}
	}
}

