<%@page import="com.hexaware.ttlh.hkia.flights.web.delegate.FlightsStatusServiceDelegate,com.hexaware.ttlh.hkia.flights.web.bean.FlightStatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1;width=device-width;initial-scale=1;">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<title>Flight Details</title>
<style>
        .fnt-clr1 {
            color: #3D51E4 !important;
        }

        .fishes {
            position: relative;
            top: 0;
            left: 0;
        }

        .fish {
            position: absolute;
            top: 19px;
            right: 464px;
        }

        .img1align {
            margin-top: 75px;
            margin-right: -17px;
        }

        .img2align {
            margin-top: 75px;
            margin-left: -23px;
        }

        .fntclr {
            color: #ffffff;
        }

        .btn .rnd-btn {

            border-radius: 50%;
            background-color: aquamarine;
        }

        .btn-round-lg {
            border-radius: 22.5px;
            width: 103px;
            height: 44px;
        }
    </style>
</head>
<body>
<%
String departureAirportCode=request.getParameter("departureAirportCodeDetails ");  
String airlineCode=request.getParameter("airlineCodeDetails"); 
String flightNumber=request.getParameter("flightNumberDetails");
String scheduledDepartureDate=request.getParameter("scheduledDepartureDateDetails");

FlightsStatusServiceDelegate delegate = new FlightsStatusServiceDelegate();
FlightStatusBean bean = delegate.getFlightDetails(airlineCode, departureAirportCode, flightNumber, scheduledDepartureDate);
%>
<div style="float:right;font-size:12px;">Welcome <%=session.getAttribute("userName") %> </div>
<button onclick="window.history.back()" class="btn btn-round-lg shadow mb-2 mt-4" style="margin-left: 218px;"><img style="width: 15px;" src="../images/arrow.png" class="mr-1">Back</button>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 shadow p-3 mb-5 bg-white rounded" style="height: 183px;">
                <div class="card-body" style="margin-top: -20px;">
                    <div class="row">
                        <div class="col-md-3">
                            <h2><%= bean.getDepartureAirportCode() %></h2>
                            <a><b><%= bean.getDepartureAirportName() %></b></a>
                            <p><%= bean.getScheduledDeparture().getDateStr() %></p>
                            <a class="fnt-clr1"><%= bean.getScheduledDeparture().getTimeStr() %></a><br>
                            <!-- <div class="row"> -->
                            <a>Gate</a>
                            <a class="fnt-clr1"><%= bean.getDepartureGate() %></a>
                        </div>
                        <div class="col-md-2">
                            <img src="../images/flight small@2x.png" class="mt-5">
                        </div>
                        <div class="col-md-3">
                            <h2><%= bean.getArrivalAirportCode() %></h2>
                            <a><b><%= bean.getArrivalAirportName() %></b></a>
                            <p><%= bean.getScheduledArrival().getDateStr() %></p>
                            <a class="fnt-clr1"><%= bean.getScheduledArrival().getTimeStr() %></a><br>
                            <!-- <div class="row"> -->
                            <a></a>
                            <a class="fnt-clr1"><%= bean.getArrivalGate() %></a>
                        </div>
                        <div class="col-md-4 text-right">
                            <br>
                            <a><b><%= bean.getAirlineName() %></b></a>
                            <p class="fnt-clr1"><%= bean.getAirlineCode() %><%= bean.getFlightNumber() %></p>
                            <a><b><%= bean.getAircraftType() %></b></a><br>
                            <a style="color: #FF9300;"><b><%= bean.getFlightStatus() %></b></a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>



        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8" style="border-radius: 10px;margin-top: -46px;background-color: #4515F0;">
                <div class="card-body text-center" style="margin-top: -21px;">
                    <img src="../images/origin.png" class="img1align">
                    <img src="../images/flight-path.png" class="fishes">
                    <img src="../images/flight-white.png" class="fish">
                    <img src="../images/destination.png" class="img2align">

                </div>
                <div class="row" style="border-radius: 6px;">
                    <div class="col-md-3" ></div>
                    <div class="col-md-6" style="margin-top: -41px;">
                        <div class="card-body text-center fntclr">
                            <div class="row">
                                <div class="col-md-5">
                                    <p>Departure</p>
                                    <% if("HKG".equalsIgnoreCase(bean.getDepartureAirportCode())){
                                    	if("Departed".equalsIgnoreCase(bean.getFlightStatus()) || "Arrived".equalsIgnoreCase(bean.getFlightStatus())){ %>
                                    <p><%= bean.getActualDeparture().getDateStr() %></p>
                                    <h6><%= bean.getActualDeparture().getTimeStr() %> ATD</h6>
                                    <%}else if("Estimated".equalsIgnoreCase(bean.getFlightStatus()) || "Delayed".equalsIgnoreCase(bean.getFlightStatus())){%>
                                    <p><%= bean.getEstimatedDeparture().getDateStr() %></p>
                                    <h6><%= bean.getEstimatedDeparture().getTimeStr() %> ETD</h6>
                                    <%}else{%>
                                    <p><%= bean.getScheduledDeparture().getDateStr() %></p>
                                    <h6><%= bean.getScheduledDeparture().getTimeStr() %> STD</h6>
                                    <%}}else if("Departed".equalsIgnoreCase(bean.getFlightStatus()) || "Arrived".equalsIgnoreCase(bean.getFlightStatus())){ %>
                                    <p><%= bean.getActualDeparture().getDateStr() %></p>
                                    <h6><%= bean.getActualDeparture().getTimeStr() %> ATD</h6>
                                    <%}else{ %>
                                    <p><%= bean.getScheduledDeparture().getDateStr() %></p>
                                    <h6><%= bean.getScheduledDeparture().getTimeStr() %> STD</h6> 
                                    <%} %>
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/line-white.png" class="mt-4 mr-5">
                                </div>
                                <div class="col-md-5">
                                    <p>Arrive</p>
                                    <% if("HKG".equalsIgnoreCase(bean.getArrivalAirportCode())){
                                    	if("Arrived".equalsIgnoreCase(bean.getFlightStatus())){ %>
                                    <p><%= bean.getActualArrival().getDateStr() %></p>
                                    <h6><%= bean.getActualArrival().getTimeStr() %> ATA</h6>
                                    <%}else if("Estimated".equalsIgnoreCase(bean.getFlightStatus()) || "Delayed".equalsIgnoreCase(bean.getFlightStatus())){%>
                                    <p><%= bean.getEstimatedArrival().getDateStr() %></p>
                                    <h6><%= bean.getEstimatedArrival().getTimeStr() %> ETA</h6>
                                    <%}else{%>
                                    <p><%= bean.getScheduledArrival().getDateStr() %></p>
                                    <h6><%= bean.getScheduledArrival().getTimeStr() %> STA</h6>
                                    <%}}else if("Arrived".equalsIgnoreCase(bean.getFlightStatus())){ %>
                                    <p><%= bean.getActualArrival().getDateStr() %></p>
                                    <h6><%= bean.getActualArrival().getTimeStr() %> ATA</h6>
                                    <%}else{ %>
                                    <p><%= bean.getScheduledArrival().getDateStr() %></p>
                                    <h6><%= bean.getScheduledArrival().getTimeStr() %> STA</h6>
                                    <%} %>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
            <div class="col-md-2"></div>

        </div>
</body>
</html>