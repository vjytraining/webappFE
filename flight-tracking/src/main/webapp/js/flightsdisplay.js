function verifyFormData(){
	let arrivalAirportCode = document.getElementById("reqArrivalAirportCode").value;
	let arrivalElement = document.getElementById("arrivalAirportCode1");
	for (var i = 0; i < arrivalElement.length; i++) {
		if(arrivalElement.options[i].value == arrivalAirportCode){
			arrivalElement.options.selectedIndex = i;
			break;
		}
	}
	
	let departureAirportCode = document.getElementById("reqDepartureAirportCode").value;
	let departureElement = document.getElementById("departureAirportCode1");
	for (var i = 0; i < departureElement.length; i++) {
		if(departureElement.options[i].value == departureAirportCode){
			departureElement.options.selectedIndex = i;
			break;
		}
	}
}

function searchFlights(){
	document.getElementById("displayFlightForm").submit();
}

function showFlightDetails(airlineCode, departureAirportCode, flightNumber, scheduledDepartureDate){
	let flightDetailsForm = document.getElementById("flightDetailsForm");
	flightDetailsForm.airlineCodeDetails.value=airlineCode;
	flightDetailsForm.departureAirportCodeDetails.value=departureAirportCode;
	flightDetailsForm.flightNumberDetails.value=flightNumber;
	flightDetailsForm.scheduledDepartureDateDetails.value=scheduledDepartureDate;
	flightDetailsForm.submit();
}