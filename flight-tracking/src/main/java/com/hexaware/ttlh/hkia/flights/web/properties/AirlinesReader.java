/* ============================================= */
/* Copyright (c)  2019 Hexaware Technologies.    */
/*          All rights reserved.                 */
/*          HEXAWARE CONFIDENTIAL                */
/* ============================================= */
package com.hexaware.ttlh.hkia.flights.web.properties;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import com.hexaware.ttlh.hkia.flights.util.FlightStatusException;

/**
 * The Class ParserConfiguration.
 * @author sudhirks@hexaware.com
 */
public class AirlinesReader extends Properties {

	private static final long serialVersionUID = 4102200430394127441L;

	/** The parser configuration. */
	private static AirlinesReader airlinesReader;

	/**
	 * Gets the single instance of ParserConfiguration.
	 *
	 * @return single instance of ParserConfiguration
	 * @throws FileNotFoundException the file not found exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public synchronized static AirlinesReader getInstance()
			throws FileNotFoundException, IOException {

		if (airlinesReader == null) {
			airlinesReader = new AirlinesReader();
			airlinesReader.load(airlinesReader.getClass()
					.getClassLoader().getResource("resources/airlines.properties")
					.openStream());
		}
		return airlinesReader;
	}

	/**
	 * Gets the parser file path.
	 *
	 * @param identifier the identifier
	 * @return the parser file path
	 * @throws ParserException the parser exception
	 */
	public static String getAirline(String airportCode) throws FlightStatusException {
		try {
			return AirlinesReader.getInstance().getProperty(airportCode);
		} catch (IOException e) {
			throw new FlightStatusException(e);
		}
	}
}

