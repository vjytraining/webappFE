<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=ISO-8859-1;width=device-width; initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/flightsearch.js"></script>
<script src="../js/bootstrap-datepicker.min.js"></script>
<title>Search Flights</title>
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	background-color: #F7F7F7;
}

/* .header {
	        overflow: hidden;
	        background-color: #2A47B1;
	        padding: 20px 10px;
	        color: white;
	    } */
.a {
	fill: #e6eaf8;
}

.b {
	fill: url(#a);
}

.c {
	clip-path: url(#b);
}

.d {
	fill: url(#c);
}

.e {
	clip-path: url(#e);
}

.f {
	fill: none;
	stroke: #fff;
	stroke-miterlimit: 10;
	stroke-width: 2px;
	opacity: 0.299;
}

.g {
	fill: url(#f);
}

.h {
	fill: url(#g);
}

.i {
	fill: #01e1bf;
}

.card {
	height: 200px;
}

.inside-card {
	margin: 27px;
	color: white;
}

.sign {
	border-radius: 10px;
	border: 1px solid #FFFFFF;
	padding: 8px;
	background-color: #4515F0;
	color: white;
	margin-top: 15px;
	margin-left: 0;
	margin-right: 0;
	padding-left: 0;
	padding-right: 0;
	display: block;
	width: 30%;
	text-align: center;
}

.clr {
	background-color: #4515F0;
}

.ctr {
	margin: 25px;
	color: white;
}

#ip2 {
	border-radius: 6px;
	border: 2px solid #FFFFFF;
	padding: 3px;
	width: 180px;
}

.inputClass{
    	border-radius: 6px;
        border: 2px solid #FFFFFF;
        padding: 3px;
        width: 180px;
    }

.images {
	background-image: url('flight-takeoff-line@2x.png');
	background-repeat: no-repeat;
	background-position: left top;
	padding-left: 15px;
}

.search {
	margin-top: 12px;
	margin-left: 12px;
}

.circle {
	/* border: 1px solid black; */
	border-radius: 50%;
	background-color: #01E1BF;
	height: 50px;
	width: 50px;
	margin-top: 48px;
}

.datepicker,
.table-condensed {
    width: 180px;
    height: 180px;
    font-size: small; 
}
.userIdentifier{

}
</style>
<script>
$(function() {
	$("#flightdate_datepicker").datepicker();
});
</script>
</head>
<body>
<% String userName = request.getParameter("userName"); 
   session.setAttribute("userName", userName.split("@")[0]);
%>
	<div style="float:right;font-size:12px;">Welcome User: <%=session.getAttribute("userName") %> </div>
	<div class="header">
		<svg xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink" width="375"
			height="150.667" viewBox="0 0 375 201.667"> <defs> <linearGradient
			id="a" x1="0.5" x2="0.5" y2="1" gradientUnits="objectBoundingBox">
		<stop offset="0" stop-color="#3d51e4" /> <stop offset="1"
			stop-color="#2a47b1" /> </linearGradient> <clipPath id="b"> <path
			class="a"
			d="M15,90H-360V291.667h257.3a66.667,66.667,0,0,0,47.044-19.43L15,201.871Z"
			transform="translate(360 0)" /> </clipPath> <linearGradient id="c" x1="0.994"
			y1="0.506" x2="0.023" y2="0.506" gradientUnits="objectBoundingBox">
		<stop offset="0" stop-color="#abb6d2" stop-opacity="0.176" /> <stop
			offset="1" stop-color="#abb6d2" stop-opacity="0.098" /> </linearGradient> <clipPath
			id="e"> <path class="b"
			d="M15,0H-360V141.667h257.3a66.667,66.667,0,0,0,47.044-19.43L15,51.871Z"
			transform="translate(360 0)" /> </clipPath> <linearGradient id="f" x1="0.994"
			y1="0.506" x2="0.023" y2="0.506" gradientUnits="objectBoundingBox">
		<stop offset="0" stop-opacity="0" /> <stop offset="1"
			stop-opacity="0.161" /> </linearGradient> <linearGradient id="g" x1="0.023"
			y1="0.506" x2="0.994" y2="0.506" gradientUnits="objectBoundingBox">
		<stop offset="0" stop-color="#fff" stop-opacity="0" /> <stop
			offset="1" stop-color="#fff" stop-opacity="0.161" /> </linearGradient> </defs> <g
			transform="translate(0 -90)"> <path class="a"
			d="M15,90H-360V291.667h257.3a66.667,66.667,0,0,0,47.044-19.43L15,201.871Z"
			transform="translate(360 0)" /> <g class="c"
			transform="translate(0 0)"> <path class="d"
			d="M0,224.443l565.854-.784L566.164,0,.31.784Z"
			transform="matrix(0.719, -0.695, 0.695, 0.719, 46.286, 315.642)" />
		</g> </g> <path class="b"
			d="M15,0H-360V141.667h257.3a66.667,66.667,0,0,0,47.044-19.43L15,51.871Z"
			transform="translate(360 0)" /> <g class="e"
			transform="translate(0 0)"> <path class="f"
			d="M9.967.9-247,257.864" transform="translate(434.5 -148.921)" /> <path
			class="f" d="M9.967.9-247,257.864"
			transform="translate(43.875 -16.629)" /> <path class="g"
			d="M0,224.443l565.854-.784L566.164,0,.31.784Z"
			transform="matrix(0.719, -0.695, 0.695, 0.719, 46.286, 315.642)" />
		<path class="h" d="M0,224.443l565.854-.784L566.164,0,.31.784Z"
			transform="matrix(0.719, -0.695, 0.695, 0.719, -306.839, 59.392)" />
		<path class="i" d="M14.556,14.1l181.063.429L195.726,0,0,.051Z"
			transform="matrix(0.719, -0.695, 0.695, 0.719, 240.625, 72.421)" />
		</g> </svg>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="card clr">
<form action="../jsp/flightsDisplay.jsp" id="searchFlightForm" name="searchFlightForm" method="post">
				<div class="row">
					<div class="ctr">
						<h2>Search Flights</h2>
						<div class="row">
							<div class="ctr">
								<label>Departure</label>
								<div class="input-group form-group">
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
										viewBox="0 0 19.023 19.023"> <defs>
									<style>
										.a {
											fill: none;
										}
										
										.b {
											fill: #fff;
										}
									</style>
									</defs> <g transform="translate(0 0)"> <path class="a"
										d="M0,0H19.023V19.023H0Z" /> <path class="b"
										d="M14.691,13.441H2.008V11.856H14.691V13.44ZM2.772,9.621a.793.793,0,0,1-.693-.408L0,5.468,1.148,5.16,3.1,7.1l4.04-1.083L3.569.411,5.1,0l5.51,5.089L14.78,3.971a1.189,1.189,0,0,1,.615,2.3L3.621,9.421l-.644.173A.791.791,0,0,1,2.772,9.621Z"
										transform="translate(1.162 3.204)" /> </g> </svg>
									<select name="departureAirportCode" id="departureAirportCode" class="inputClass">
						<option>All</option>
						<option value="ZNZ">Abeid Amani</option>
						<option value="AUH">Abu Dhabi</option>
						<option value="ADD">Addis Ababa</option>
						<option value="ADL">Adelaide</option>
						<option value="SOC">Adi Sumarmo</option>
						<option value="AMD">Ahmadabad</option>
						<option value="LAQ">Al Abraq</option>
						<option value="XJD">Al Udeid A.B.</option>
						<option value="HBE">Alexandria</option>
						<option value="ALA">Almaty</option>
						<option value="AMA">Amarillo</option>
						<option value="AMM">Amman</option>
						<option value="AMS">Amsterdam</option>
						<option value="ANC">Anchorage</option>
						<option value="UAM">Anderson AFB</option>
						<option value="ADW">Andrews AF Base</option>
						<option value="ANK">Ankara</option>
						<option value="ANR">Antwerp</option>
						<option value="AOJ">Aomori</option>
						<option value="AKJ">Asahikawa</option>
						<option value="ASB">Ashgabat</option>
						<option value="TSE">Astana</option>
						<option value="ASW">Aswan</option>
						<option value="ATH">Athens</option>
						<option value="ATL">Atlanta</option>
						<option value="GUW">Atyrau</option>
						<option value="AKL">Auckland</option>
						<option value="AVV">Avalon</option>
						<option value="AYQ">Ayers Rock</option>
						<option value="BWN">B S Begawan</option>
						<option value="BGW">Baghdad</option>
						<option value="OAI">Bagram Air Base</option>
						<option value="BAH">Bahrain</option>
						<option value="GYD">Baku</option>
						<option value="BKK">Bangkok</option>
						<option value="DMK">Bangkok/DMK</option>
						<option value="BAV">Baotou</option>
						<option value="BCN">Barcelona</option>
						<option value="AZI">Bateen Airport</option>
						<option value="BHY">Beihai</option>
						<option value="PEK">Beijing</option>
						<option value="BEY">Beirut</option>
						<option value="BFS">Belfast</option>
						<option value="BLR">Bengaluru</option>
						<option value="SXF">Berlin</option>
						<option value="BBI">Biju Patnail</option>
						<option value="BIO">Bilbao Airport</option>
						<option value="FRU">Bishkek</option>
						<option value="KLV">BOHEMIA</option>
						<option value="BOS">Boston</option>
						<option value="LKZ">Brandon</option>
						<option value="VBS">Brescia</option>
						<option value="BNE">Brisbane</option>
						<option value="BRS">Bristol Airport</option>
						<option value="BRU">Brussels</option>
						<option value="BUD">Budapest</option>
						<option value="BJM">Bujumbura Apt</option>
						<option value="PUS">Busan</option>
						<option value="CNS">Cairns</option>
						<option value="CAI">Cairo</option>
						<option value="VCA">Can Tho</option>
						<option value="CBR">Canberra</option>
						<option value="CPT">Cape Town</option>
						<option value="CCS">Caracas</option>
						<option value="CEB">Cebu</option>
						<option value="CGQ">Changchun</option>
						<option value="CSX">Changsha</option>
						<option value="HHA">Changsha</option>
						<option value="CZX">Changzhou</option>
						<option value="CRL">Charleroi</option>
						<option value="CHR">Chateauroux</option>
						<option value="CTU">Chengdu</option>
						<option value="MAA">Chennai</option>
						<option value="CJJ">Cheongju</option>
						<option value="CNX">Chiang Mai</option>
						<option value="CEI">Chiang Rai</option>
						<option value="ORD">Chicago</option>
						<option value="CGP">Chittagong</option>
						<option value="CKG">Chongqing</option>
						<option value="CHC">Christchurch</option>
						<option value="CVG">Cincinnati</option>
						<option value="CRK">Clark</option>
						<option value="COK">Cochin</option>
						<option value="CGN">Cologne</option>
						<option value="CMB">Colombo</option>
						<option value="LCK">Columbus</option>
						<option value="CPH">Copenhagen</option>
						<option value="DAD">Da Nang</option>
						<option value="TAE">Daegu</option>
						<option value="DLC">Dalian</option>
						<option value="DFW">Dallas FT.Worth</option>
						<option value="DAM">Damascus</option>
						<option value="DMM">Dammam</option>
						<option value="DAN">Danville</option>
						<option value="DAR">DarEsSalaam</option>
						<option value="DRW">Darwin</option>
						<option value="DAT">Datong</option>
						<option value="DVO">Davao</option>
						<option value="DYG">Dayong</option>
						<option value="DEL">Delhi</option>
						<option value="DPS">Denpasar</option>
						<option value="DEN">Denver</option>
						<option value="DTW">Detroit</option>
						<option value="DHA">Dhahran</option>
						<option value="DAC">Dhaka</option>
						<option value="DIA">Doha</option>
						<option value="DOH">Doha</option>
						<option value="DOV">Dover</option>
						<option value="DRS">Dresden Klotzsc</option>
						<option value="DXB">Dubai</option>
						<option value="DWC">Dubai/DWC</option>
						<option value="DUB">Dublin</option>
						<option value="DNH">Dunhuang</option>
						<option value="DYU">Dushanbe</option>
						<option value="DUS">Dusseldorf</option>
						<option value="EMA">East Midlands</option>
						<option value="EIL">Eielson AFB</option>
						<option value="SVX">Ekaterinburg</option>
						<option value="EZE">Ezeiza I'tl Apt</option>
						<option value="SUU">Fairfield</option>
						<option value="FSC">Figari</option>
						<option value="FRA">Frankfurt</option>
						<option value="BIK">Frans Kaisiepo</option>
						<option value="FRJ">Frejus</option>
						<option value="FUK">Fukuoka</option>
						<option value="FKS">Fukushima</option>
						<option value="FOC">Fuzhou</option>
						<option value="GVA">Geneva</option>
						<option value="PIK">Glasgow</option>
						<option value="OOL">Gold Coast</option>
						<option value="GCM">Grand Cayman</option>
						<option value="GRZ">GRAZ APT</option>
						<option value="GDL">Guadalajara</option>
						<option value="GUM">Guam</option>
						<option value="CAN">Guangzhou</option>
						<option value="KWL">Guilin</option>
						<option value="KWE">Guiyang</option>
						<option value="GUR">Gurney</option>
						<option value="GAU">Guwahati</option>
						<option value="KWJ">Gwangju</option>
						<option value="HHN">Hahn</option>
						<option value="HAK">Haikou</option>
						<option value="HLD">Hailar</option>
						<option value="HPH">Haiphong</option>
						<option value="HKD">Hakodate</option>
						<option value="HAM">Hamburg</option>
						<option value="HNA">Hanamaki</option>
						<option value="HGH">Hangzhou</option>
						<option value="HAN">Hanoi</option>
						<option value="HRB">Harbin</option>
						<option value="BDL">Hartford Intl</option>
						<option value="HDY">Hat Yai</option>
						<option value="HFE">Hefei</option>
						<option value="HEL">Helsinki</option>
						<option value="HIJ">Hiroshima</option>
						<option value="SGN">Ho Chi Minh</option>
						<option value="HET">Hohhot</option>
						<option value="HKG" selected="selected">Hong Kong</option>
						<option value="HNL">Honolulu</option>
						<option value="IAH">Houston</option>
						<option value="HIA">Huaian</option>
						<option value="HUN">Hualien</option>
						<option value="TXN">Huangshan</option>
						<option value="FM2">Humen Pier</option>
						<option value="HSV">Huntsville</option>
						<option value="HRG">Hurghada</option>
						<option value="HYD">Hyderabad</option>
						<option value="IBR">Ibaraki</option>
						<option value="IBZ">Ibiza</option>
						<option value="ILO">Iloilo</option>
						<option value="IKA">Iman K I'tl Apt</option>
						<option value="IND">Indianapolis</option>
						<option value="INN">Innsbruck K Apt</option>
						<option value="INV">INVERNESS</option>
						<option value="IKT">Irkutsk</option>
						<option value="ISG">Ishigaki</option>
						<option value="ISB">Islamabad</option>
						<option value="ISL">Istanbul</option>
						<option value="IST">Istanbul</option>
						<option value="IWK">Iwakuni</option>
						<option value="ADB">Izmir</option>
						<option value="IZO">Izumo</option>
						<option value="CGK">Jakarta</option>
						<option value="JED">Jeddah</option>
						<option value="CJU">Jeju</option>
						<option value="SWA">JieyangChaoshan</option>
						<option value="TNA">Jinan</option>
						<option value="JNZ">Jinzhou</option>
						<option value="JNB">Johannesburg</option>
						<option value="KBL">Kabul</option>
						<option value="DNA">Kadena</option>
						<option value="KOJ">Kagoshima</option>
						<option value="KLO">Kalibo</option>
						<option value="KDH">Kandahar</option>
						<option value="MCI">Kansas City</option>
						<option value="KHH">Kaohsiung</option>
						<option value="KHI">Karachi</option>
						<option value="KGF">Karaganda</option>
						<option value="KTM">Kathmandu</option>
						<option value="KZN">Kazan</option>
						<option value="KEF">Keflavik</option>
						<option value="KHV">Khabarovsk</option>
						<option value="IEV">Kiev Int'l Apt</option>
						<option value="KNH">Kinmen</option>
						<option value="KKJ">Kitakyushu</option>
						<option value="KTT">KITTILA AIRPORT</option>
						<option value="KCZ">Kochi</option>
						<option value="CCU">Kolkata</option>
						<option value="KMQ">Komatsu</option>
						<option value="ROR">Koror</option>
						<option value="BKI">Kota Kinabalu</option>
						<option value="KBV">Krabi</option>
						<option value="KJA">Krasnoyarsk</option>
						<option value="KUL">Kuala Lumpur</option>
						<option value="KCH">Kuching</option>
						<option value="KMJ">Kumamoto</option>
						<option value="KMG">Kunming</option>
						<option value="KUV">Kunsan</option>
						<option value="KWI">Kuwait</option>
						<option value="LOS">Lagos</option>
						<option value="LHE">Lahore</option>
						<option value="LGK">Langkawi</option>
						<option value="LHW">Lanzhou</option>
						<option value="ZGC">Lanzhou</option>
						<option value="LAO">Laoag</option>
						<option value="LAS">Las Vegas</option>
						<option value="LBG">Le Bourget</option>
						<option value="LEJ">Leipzig</option>
						<option value="LXA">Lhasa</option>
						<option value="LYG">Lianyungang</option>
						<option value="LGG">Liege</option>
						<option value="LJG">Lijiang</option>
						<option value="LYI">LINYI</option>
						<option value="LIS">Lisbon</option>
						<option value="LRF">Little Rock AFB</option>
						<option value="SEN">London Southend</option>
						<option value="LGW">London/LGW</option>
						<option value="LHR">London/LHR</option>
						<option value="STN">London/STN</option>
						<option value="LAX">Los Angeles</option>
						<option value="SDF">Louisville</option>
						<option value="LYA">Luoyang</option>
						<option value="LTN">Luton</option>
						<option value="LUX">Luxembourg</option>
						<option value="MFM">Macau</option>
						<option value="MAD">Madrid</option>
						<option value="MZG">Makung</option>
						<option value="AGP">MALAGA</option>
						<option value="MLE">Male</option>
						<option value="MDC">Manado</option>
						<option value="MAN">Manchester</option>
						<option value="MDL">Mandalay</option>
						<option value="MAI">Mangochi Apt</option>
						<option value="MNL">Manila</option>
						<option value="NZH">Manzhouli</option>
						<option value="MMJ">Matsumoto</option>
						<option value="MYJ">Matsuyama</option>
						<option value="MRU">Mauritius</option>
						<option value="WRI">McGuire AFB</option>
						<option value="KNO">Medan</option>
						<option value="MES">Medan</option>
						<option value="MXZ">Meixian</option>
						<option value="MEL">Melbourne</option>
						<option value="MEM">Memphis</option>
						<option value="MEX">Mexico City</option>
						<option value="MIA">Miami</option>
						<option value="MXP">Milan/MXP</option>
						<option value="MSP">Minneapolis</option>
						<option value="MYY">Miri</option>
						<option value="MSJ">Misawa</option>
						<option value="SHI">Miyako/SHI</option>
						<option value="KMI">Miyazaki</option>
						<option value="YUL">Montreal</option>
						<option value="SVO">Moscow</option>
						<option value="VKO">Moscow</option>
						<option value="DME">Moscow/DME</option>
						<option value="MWX">Muan Airport</option>
						<option value="MDG">Mudanjiang</option>
						<option value="BOM">Mumbai</option>
						<option value="MUC">Munich</option>
						<option value="MCT">Muscat</option>
						<option value="NAN">Nadi</option>
						<option value="NGS">Nagasaki</option>
						<option value="NGO">Nagoya</option>
						<option value="NBO">Nairobi</option>
						<option value="KHN">Nanchang</option>
						<option value="NKG">Nanjing</option>
						<option value="NNG">Nanning</option>
						<option value="NAY">Nanyuan</option>
						<option value="NYT">Naypyidaw</option>
						<option value="NDJ">Ndjamena</option>
						<option value="JFK">New York/JFK</option>
						<option value="LGA">New York/LGA</option>
						<option value="EWR">New York/Newark</option>
						<option value="CXR">Nha Trang</option>
						<option value="KIJ">Niigata</option>
						<option value="NGB">Ningbo</option>
						<option value="NGU">Norfolk</option>
						<option value="NOU">Noumea</option>
						<option value="OVB">Novosibirsk</option>
						<option value="NUE">Nuernberg</option>
						<option value="OAK">Oakland</option>
						<option value="OKJ">Okayama</option>
						<option value="OKA">Okinawa</option>
						<option value="ONT">Ontario</option>
						<option value="DSN">Ordos</option>
						<option value="OLA">Orland Airport</option>
						<option value="ITM">Osaka/Itami</option>
						<option value="KIX">Osaka/Kansai</option>
						<option value="OSN">Osan</option>
						<option value="OST">Ostend</option>
						<option value="CDG">Paris</option>
						<option value="PBH">Paro</option>
						<option value="PEN">Penang</option>
						<option value="TDR">Perry Stokes</option>
						<option value="PER">Perth</option>
						<option value="PEW">Peshawar</option>
						<option value="PHL">Philadelphia</option>
						<option value="PNH">Phnom Penh</option>
						<option value="PHX">Phoenix</option>
						<option value="PQC">Phu Quoc Island</option>
						<option value="HKT">Phuket</option>
						<option value="TMP">Pirkkalan</option>
						<option value="POM">Port Moresby</option>
						<option value="PDX">Portland</option>
						<option value="OPO">Porto</option>
						<option value="PRG">Prague</option>
						<option value="TAO">Qingdao</option>
						<option value="NDG">Qiqihar</option>
						<option value="JJN">Quanzhou</option>
						<option value="ZQN">Queenstown</option>
						<option value="RBA">Rabat-Sale</option>
						<option value="FFD">RAF Fairford</option>
						<option value="NHT">RAF Northolt</option>
						<option value="RMS">Ramstein</option>
						<option value="RIN">Ringi Cove Apt</option>
						<option value="RUH">Riyadh</option>
						<option value="DSA">Robin Hood</option>
						<option value="FCO">Rome</option>
						<option value="MHR">Sacramento</option>
						<option value="HSG">Saga</option>
						<option value="SPN">Saipan</option>
						<option value="SLC">Salt Lake City</option>
						<option value="SZG">Salzburg</option>
						<option value="USM">Samui</option>
						<option value="SFO">San Francisco</option>
						<option value="SJC">San Jose</option>
						<option value="SCL">Santiago</option>
						<option value="SCQ">Santiago</option>
						<option value="SYX">Sanya</option>
						<option value="CTS">Sapporo</option>
						<option value="SPK">Sapporo</option>
						<option value="SEA">Seattle</option>
						<option value="SDJ">Sendai</option>
						<option value="GMP">Seoul/GMP</option>
						<option value="ICN">Seoul/ICN</option>
						<option value="SVQ">Seville Airport</option>
						<option value="SEZ">Seychelles</option>
						<option value="PVG">Shanghai/PVG</option>
						<option value="SHA">Shanghai/SHA</option>
						<option value="SHJ">Sharjah</option>
						<option value="SK2">She Kou Pier</option>
						<option value="SHE">Shenyang</option>
						<option value="SZX">Shenzhen</option>
						<option value="FW2">Shenzhen Pier</option>
						<option value="SJW">Shijiazhuang</option>
						<option value="FSZ">Shizuoka</option>
						<option value="SKT">Sialkot Int'l</option>
						<option value="REP">Siem Reap</option>
						<option value="KOS">Sihanoukville</option>
						<option value="SIN">Singapore</option>
						<option value="GBE">Sir Serestse</option>
						<option value="SPM">Spangdahlem</option>
						<option value="SPU">Split Airport</option>
						<option value="DGX">St Athan</option>
						<option value="STL">St.Louis</option>
						<option value="ARN">Stockholm</option>
						<option value="STR">Stuttgart</option>
						<option value="SZB">Subang</option>
						<option value="SFS">Subic Bay</option>
						<option value="PKU">Sultan S K II</option>
						<option value="SUB">Surabaya</option>
						<option value="SYD">Sydney</option>
						<option value="TUU">Tabuk</option>
						<option value="RMQ">Taichung</option>
						<option value="TNN">Tainan</option>
						<option value="TPE">Taipei</option>
						<option value="TSA">Taipei/TSA</option>
						<option value="TTT">Taitung</option>
						<option value="TYN">Taiyuan</option>
						<option value="TAK">Takamatsu</option>
						<option value="TAS">Tashkent</option>
						<option value="TBS">Tbilisi</option>
						<option value="THR">Tehran</option>
						<option value="TLV">Tel Aviv</option>
						<option value="TEV">Teruel</option>
						<option value="TSN">Tianjin</option>
						<option value="TIV">Tivat Airport</option>
						<option value="TKS">Tokushima</option>
						<option value="HND">Tokyo/HND</option>
						<option value="NRT">Tokyo/NRT</option>
						<option value="TOF">Tomsk</option>
						<option value="YYZ">Toronto</option>
						<option value="TOJ">Torrejon AFB</option>
						<option value="TTJ">Tottori</option>
						<option value="TLS">Toulouse</option>
						<option value="TZX">Trabzon Airport</option>
						<option value="TUN">Tunis</option>
						<option value="KRW">Turkmenbashy</option>
						<option value="UTH">Udon Thani</option>
						<option value="ULN">Ulaan Baatar</option>
						<option value="UUD">Ulan-Ude</option>
						<option value="URC">Urumqi</option>
						<option value="UTP">Utapao</option>
						<option value="YVR">Vancouver</option>
						<option value="THN">Vanersborg</option>
						<option value="VRN">verona</option>
						<option value="VIE">Vienna</option>
						<option value="VTE">Vientiane</option>
						<option value="VCP">Viracopos</option>
						<option value="VIT">VITORIA AIRPORT</option>
						<option value="VVO">Vladivostok</option>
						<option value="WXN">Wanzhou</option>
						<option value="WAW">Warsaw</option>
						<option value="DCA">Washington Nat.</option>
						<option value="IAD">Washington/IAD</option>
						<option value="WTB">Wellcamp Apt</option>
						<option value="WLG">Wellington</option>
						<option value="WNZ">Wenzhou</option>
						<option value="ILN">Wilmington</option>
						<option value="WUH">Wuhan</option>
						<option value="WUX">Wuxi</option>
						<option value="WUS">Wuyishan</option>
						<option value="XMN">Xiamen</option>
						<option value="SIA">Xian</option>
						<option value="XIY">Xian</option>
						<option value="XNN">Xining</option>
						<option value="JHG">Xishuangbanna</option>
						<option value="XUZ">Xuzhou</option>
						<option value="YNZ">Yancheng</option>
						<option value="RGN">Yangon</option>
						<option value="YNY">Yangyang</option>
						<option value="YTY">Yangzhou</option>
						<option value="YNT">Yantai</option>
						<option value="YIH">Yichang</option>
						<option value="INC">Yinchuan</option>
						<option value="YIW">Yiwu</option>
						<option value="OKO">Yokota</option>
						<option value="YGJ">Yonago</option>
						<option value="YCU">Yuncheng</option>
						<option value="UUS">YuzhnoSakhainsk</option>
						<option value="ZAM">Zamboanga</option>
						<option value="ZAZ">Zaragoza</option>
						<option value="ZHA">Zhanjiang</option>
						<option value="CGO">Zhengzhou</option>
						<option value="HSN">Zhoushan</option>
						<option value="ZUH">Zhuhai</option>
						<option value="ZYI">Zunyi</option>
						<option value="ZRH">Zurich</option>
								  </select>
								</div>
							</div>
							<div class="ctr">
								<label>Arrival</label>
								<div class="input-group form-group images">
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
										viewBox="0 0 19.023 19.023"> <defs>
									<style>
										.a {
											fill: none;
										}
										
										.b {
											fill: #fff;
										}
									</style>
									</defs> <g transform="translate(0 0)"> <path class="a"
										d="M0,0H19.023V19.023H0Z" /> <path class="b"
										d="M13.709,14.99H1.026V13.4H13.709v1.585Zm-.4-3.964A1.189,1.189,0,0,1,13,10.986L1.138,7.807.587,7.659A.793.793,0,0,1,0,6.88L.072,2.6l1.148.308.724,2.656L5.984,6.644,5.691,0,7.223.411,9.45,7.572,13.62,8.69a1.189,1.189,0,0,1-.307,2.337Z"
										transform="translate(2.378 2.378)" /> </g> </svg>
									<select name="arrivalAirportCode" id="arrivalAirportCode" class="inputClass">
						<option>All</option>
						<option value="ZNZ">Abeid Amani</option>
						<option value="AUH">Abu Dhabi</option>
						<option value="ADD">Addis Ababa</option>
						<option value="ADL">Adelaide</option>
						<option value="SOC">Adi Sumarmo</option>
						<option value="AMD">Ahmadabad</option>
						<option value="LAQ">Al Abraq</option>
						<option value="XJD">Al Udeid A.B.</option>
						<option value="HBE">Alexandria</option>
						<option value="ALA">Almaty</option>
						<option value="AMA">Amarillo</option>
						<option value="AMM">Amman</option>
						<option value="AMS">Amsterdam</option>
						<option value="ANC">Anchorage</option>
						<option value="UAM">Anderson AFB</option>
						<option value="ADW">Andrews AF Base</option>
						<option value="ANK">Ankara</option>
						<option value="ANR">Antwerp</option>
						<option value="AOJ">Aomori</option>
						<option value="AKJ">Asahikawa</option>
						<option value="ASB">Ashgabat</option>
						<option value="TSE">Astana</option>
						<option value="ASW">Aswan</option>
						<option value="ATH">Athens</option>
						<option value="ATL">Atlanta</option>
						<option value="GUW">Atyrau</option>
						<option value="AKL">Auckland</option>
						<option value="AVV">Avalon</option>
						<option value="AYQ">Ayers Rock</option>
						<option value="BWN">B S Begawan</option>
						<option value="BGW">Baghdad</option>
						<option value="OAI">Bagram Air Base</option>
						<option value="BAH">Bahrain</option>
						<option value="GYD">Baku</option>
						<option value="BKK">Bangkok</option>
						<option value="DMK">Bangkok/DMK</option>
						<option value="BAV">Baotou</option>
						<option value="BCN">Barcelona</option>
						<option value="AZI">Bateen Airport</option>
						<option value="BHY">Beihai</option>
						<option value="PEK">Beijing</option>
						<option value="BEY">Beirut</option>
						<option value="BFS">Belfast</option>
						<option value="BLR">Bengaluru</option>
						<option value="SXF">Berlin</option>
						<option value="BBI">Biju Patnail</option>
						<option value="BIO">Bilbao Airport</option>
						<option value="FRU">Bishkek</option>
						<option value="KLV">BOHEMIA</option>
						<option value="BOS">Boston</option>
						<option value="LKZ">Brandon</option>
						<option value="VBS">Brescia</option>
						<option value="BNE">Brisbane</option>
						<option value="BRS">Bristol Airport</option>
						<option value="BRU">Brussels</option>
						<option value="BUD">Budapest</option>
						<option value="BJM">Bujumbura Apt</option>
						<option value="PUS">Busan</option>
						<option value="CNS">Cairns</option>
						<option value="CAI">Cairo</option>
						<option value="VCA">Can Tho</option>
						<option value="CBR">Canberra</option>
						<option value="CPT">Cape Town</option>
						<option value="CCS">Caracas</option>
						<option value="CEB">Cebu</option>
						<option value="CGQ">Changchun</option>
						<option value="CSX">Changsha</option>
						<option value="HHA">Changsha</option>
						<option value="CZX">Changzhou</option>
						<option value="CRL">Charleroi</option>
						<option value="CHR">Chateauroux</option>
						<option value="CTU">Chengdu</option>
						<option value="MAA">Chennai</option>
						<option value="CJJ">Cheongju</option>
						<option value="CNX">Chiang Mai</option>
						<option value="CEI">Chiang Rai</option>
						<option value="ORD">Chicago</option>
						<option value="CGP">Chittagong</option>
						<option value="CKG">Chongqing</option>
						<option value="CHC">Christchurch</option>
						<option value="CVG">Cincinnati</option>
						<option value="CRK">Clark</option>
						<option value="COK">Cochin</option>
						<option value="CGN">Cologne</option>
						<option value="CMB">Colombo</option>
						<option value="LCK">Columbus</option>
						<option value="CPH">Copenhagen</option>
						<option value="DAD">Da Nang</option>
						<option value="TAE">Daegu</option>
						<option value="DLC">Dalian</option>
						<option value="DFW">Dallas FT.Worth</option>
						<option value="DAM">Damascus</option>
						<option value="DMM">Dammam</option>
						<option value="DAN">Danville</option>
						<option value="DAR">DarEsSalaam</option>
						<option value="DRW">Darwin</option>
						<option value="DAT">Datong</option>
						<option value="DVO">Davao</option>
						<option value="DYG">Dayong</option>
						<option value="DEL">Delhi</option>
						<option value="DPS">Denpasar</option>
						<option value="DEN">Denver</option>
						<option value="DTW">Detroit</option>
						<option value="DHA">Dhahran</option>
						<option value="DAC">Dhaka</option>
						<option value="DIA">Doha</option>
						<option value="DOH">Doha</option>
						<option value="DOV">Dover</option>
						<option value="DRS">Dresden Klotzsc</option>
						<option value="DXB">Dubai</option>
						<option value="DWC">Dubai/DWC</option>
						<option value="DUB">Dublin</option>
						<option value="DNH">Dunhuang</option>
						<option value="DYU">Dushanbe</option>
						<option value="DUS">Dusseldorf</option>
						<option value="EMA">East Midlands</option>
						<option value="EIL">Eielson AFB</option>
						<option value="SVX">Ekaterinburg</option>
						<option value="EZE">Ezeiza I'tl Apt</option>
						<option value="SUU">Fairfield</option>
						<option value="FSC">Figari</option>
						<option value="FRA">Frankfurt</option>
						<option value="BIK">Frans Kaisiepo</option>
						<option value="FRJ">Frejus</option>
						<option value="FUK">Fukuoka</option>
						<option value="FKS">Fukushima</option>
						<option value="FOC">Fuzhou</option>
						<option value="GVA">Geneva</option>
						<option value="PIK">Glasgow</option>
						<option value="OOL">Gold Coast</option>
						<option value="GCM">Grand Cayman</option>
						<option value="GRZ">GRAZ APT</option>
						<option value="GDL">Guadalajara</option>
						<option value="GUM">Guam</option>
						<option value="CAN">Guangzhou</option>
						<option value="KWL">Guilin</option>
						<option value="KWE">Guiyang</option>
						<option value="GUR">Gurney</option>
						<option value="GAU">Guwahati</option>
						<option value="KWJ">Gwangju</option>
						<option value="HHN">Hahn</option>
						<option value="HAK">Haikou</option>
						<option value="HLD">Hailar</option>
						<option value="HPH">Haiphong</option>
						<option value="HKD">Hakodate</option>
						<option value="HAM">Hamburg</option>
						<option value="HNA">Hanamaki</option>
						<option value="HGH">Hangzhou</option>
						<option value="HAN">Hanoi</option>
						<option value="HRB">Harbin</option>
						<option value="BDL">Hartford Intl</option>
						<option value="HDY">Hat Yai</option>
						<option value="HFE">Hefei</option>
						<option value="HEL">Helsinki</option>
						<option value="HIJ">Hiroshima</option>
						<option value="SGN">Ho Chi Minh</option>
						<option value="HET">Hohhot</option>
						<option value="HKG">Hong Kong</option>
						<option value="HNL">Honolulu</option>
						<option value="IAH">Houston</option>
						<option value="HIA">Huaian</option>
						<option value="HUN">Hualien</option>
						<option value="TXN">Huangshan</option>
						<option value="FM2">Humen Pier</option>
						<option value="HSV">Huntsville</option>
						<option value="HRG">Hurghada</option>
						<option value="HYD">Hyderabad</option>
						<option value="IBR">Ibaraki</option>
						<option value="IBZ">Ibiza</option>
						<option value="ILO">Iloilo</option>
						<option value="IKA">Iman K I'tl Apt</option>
						<option value="IND">Indianapolis</option>
						<option value="INN">Innsbruck K Apt</option>
						<option value="INV">INVERNESS</option>
						<option value="IKT">Irkutsk</option>
						<option value="ISG">Ishigaki</option>
						<option value="ISB">Islamabad</option>
						<option value="ISL">Istanbul</option>
						<option value="IST">Istanbul</option>
						<option value="IWK">Iwakuni</option>
						<option value="ADB">Izmir</option>
						<option value="IZO">Izumo</option>
						<option value="CGK">Jakarta</option>
						<option value="JED">Jeddah</option>
						<option value="CJU">Jeju</option>
						<option value="SWA">JieyangChaoshan</option>
						<option value="TNA">Jinan</option>
						<option value="JNZ">Jinzhou</option>
						<option value="JNB">Johannesburg</option>
						<option value="KBL">Kabul</option>
						<option value="DNA">Kadena</option>
						<option value="KOJ">Kagoshima</option>
						<option value="KLO">Kalibo</option>
						<option value="KDH">Kandahar</option>
						<option value="MCI">Kansas City</option>
						<option value="KHH">Kaohsiung</option>
						<option value="KHI">Karachi</option>
						<option value="KGF">Karaganda</option>
						<option value="KTM">Kathmandu</option>
						<option value="KZN">Kazan</option>
						<option value="KEF">Keflavik</option>
						<option value="KHV">Khabarovsk</option>
						<option value="IEV">Kiev Int'l Apt</option>
						<option value="KNH">Kinmen</option>
						<option value="KKJ">Kitakyushu</option>
						<option value="KTT">KITTILA AIRPORT</option>
						<option value="KCZ">Kochi</option>
						<option value="CCU">Kolkata</option>
						<option value="KMQ">Komatsu</option>
						<option value="ROR">Koror</option>
						<option value="BKI">Kota Kinabalu</option>
						<option value="KBV">Krabi</option>
						<option value="KJA">Krasnoyarsk</option>
						<option value="KUL">Kuala Lumpur</option>
						<option value="KCH">Kuching</option>
						<option value="KMJ">Kumamoto</option>
						<option value="KMG">Kunming</option>
						<option value="KUV">Kunsan</option>
						<option value="KWI">Kuwait</option>
						<option value="LOS">Lagos</option>
						<option value="LHE">Lahore</option>
						<option value="LGK">Langkawi</option>
						<option value="LHW">Lanzhou</option>
						<option value="ZGC">Lanzhou</option>
						<option value="LAO">Laoag</option>
						<option value="LAS">Las Vegas</option>
						<option value="LBG">Le Bourget</option>
						<option value="LEJ">Leipzig</option>
						<option value="LXA">Lhasa</option>
						<option value="LYG">Lianyungang</option>
						<option value="LGG">Liege</option>
						<option value="LJG">Lijiang</option>
						<option value="LYI">LINYI</option>
						<option value="LIS">Lisbon</option>
						<option value="LRF">Little Rock AFB</option>
						<option value="SEN">London Southend</option>
						<option value="LGW">London/LGW</option>
						<option value="LHR">London/LHR</option>
						<option value="STN">London/STN</option>
						<option value="LAX">Los Angeles</option>
						<option value="SDF">Louisville</option>
						<option value="LYA">Luoyang</option>
						<option value="LTN">Luton</option>
						<option value="LUX">Luxembourg</option>
						<option value="MFM">Macau</option>
						<option value="MAD">Madrid</option>
						<option value="MZG">Makung</option>
						<option value="AGP">MALAGA</option>
						<option value="MLE">Male</option>
						<option value="MDC">Manado</option>
						<option value="MAN">Manchester</option>
						<option value="MDL">Mandalay</option>
						<option value="MAI">Mangochi Apt</option>
						<option value="MNL">Manila</option>
						<option value="NZH">Manzhouli</option>
						<option value="MMJ">Matsumoto</option>
						<option value="MYJ">Matsuyama</option>
						<option value="MRU">Mauritius</option>
						<option value="WRI">McGuire AFB</option>
						<option value="KNO">Medan</option>
						<option value="MES">Medan</option>
						<option value="MXZ">Meixian</option>
						<option value="MEL" selected="selected">Melbourne</option>
						<option value="MEM">Memphis</option>
						<option value="MEX">Mexico City</option>
						<option value="MIA">Miami</option>
						<option value="MXP">Milan/MXP</option>
						<option value="MSP">Minneapolis</option>
						<option value="MYY">Miri</option>
						<option value="MSJ">Misawa</option>
						<option value="SHI">Miyako/SHI</option>
						<option value="KMI">Miyazaki</option>
						<option value="YUL">Montreal</option>
						<option value="SVO">Moscow</option>
						<option value="VKO">Moscow</option>
						<option value="DME">Moscow/DME</option>
						<option value="MWX">Muan Airport</option>
						<option value="MDG">Mudanjiang</option>
						<option value="BOM">Mumbai</option>
						<option value="MUC">Munich</option>
						<option value="MCT">Muscat</option>
						<option value="NAN">Nadi</option>
						<option value="NGS">Nagasaki</option>
						<option value="NGO">Nagoya</option>
						<option value="NBO">Nairobi</option>
						<option value="KHN">Nanchang</option>
						<option value="NKG">Nanjing</option>
						<option value="NNG">Nanning</option>
						<option value="NAY">Nanyuan</option>
						<option value="NYT">Naypyidaw</option>
						<option value="NDJ">Ndjamena</option>
						<option value="JFK">New York/JFK</option>
						<option value="LGA">New York/LGA</option>
						<option value="EWR">New York/Newark</option>
						<option value="CXR">Nha Trang</option>
						<option value="KIJ">Niigata</option>
						<option value="NGB">Ningbo</option>
						<option value="NGU">Norfolk</option>
						<option value="NOU">Noumea</option>
						<option value="OVB">Novosibirsk</option>
						<option value="NUE">Nuernberg</option>
						<option value="OAK">Oakland</option>
						<option value="OKJ">Okayama</option>
						<option value="OKA">Okinawa</option>
						<option value="ONT">Ontario</option>
						<option value="DSN">Ordos</option>
						<option value="OLA">Orland Airport</option>
						<option value="ITM">Osaka/Itami</option>
						<option value="KIX">Osaka/Kansai</option>
						<option value="OSN">Osan</option>
						<option value="OST">Ostend</option>
						<option value="CDG">Paris</option>
						<option value="PBH">Paro</option>
						<option value="PEN">Penang</option>
						<option value="TDR">Perry Stokes</option>
						<option value="PER">Perth</option>
						<option value="PEW">Peshawar</option>
						<option value="PHL">Philadelphia</option>
						<option value="PNH">Phnom Penh</option>
						<option value="PHX">Phoenix</option>
						<option value="PQC">Phu Quoc Island</option>
						<option value="HKT">Phuket</option>
						<option value="TMP">Pirkkalan</option>
						<option value="POM">Port Moresby</option>
						<option value="PDX">Portland</option>
						<option value="OPO">Porto</option>
						<option value="PRG">Prague</option>
						<option value="TAO">Qingdao</option>
						<option value="NDG">Qiqihar</option>
						<option value="JJN">Quanzhou</option>
						<option value="ZQN">Queenstown</option>
						<option value="RBA">Rabat-Sale</option>
						<option value="FFD">RAF Fairford</option>
						<option value="NHT">RAF Northolt</option>
						<option value="RMS">Ramstein</option>
						<option value="RIN">Ringi Cove Apt</option>
						<option value="RUH">Riyadh</option>
						<option value="DSA">Robin Hood</option>
						<option value="FCO">Rome</option>
						<option value="MHR">Sacramento</option>
						<option value="HSG">Saga</option>
						<option value="SPN">Saipan</option>
						<option value="SLC">Salt Lake City</option>
						<option value="SZG">Salzburg</option>
						<option value="USM">Samui</option>
						<option value="SFO">San Francisco</option>
						<option value="SJC">San Jose</option>
						<option value="SCL">Santiago</option>
						<option value="SCQ">Santiago</option>
						<option value="SYX">Sanya</option>
						<option value="CTS">Sapporo</option>
						<option value="SPK">Sapporo</option>
						<option value="SEA">Seattle</option>
						<option value="SDJ">Sendai</option>
						<option value="GMP">Seoul/GMP</option>
						<option value="ICN">Seoul/ICN</option>
						<option value="SVQ">Seville Airport</option>
						<option value="SEZ">Seychelles</option>
						<option value="PVG">Shanghai/PVG</option>
						<option value="SHA">Shanghai/SHA</option>
						<option value="SHJ">Sharjah</option>
						<option value="SK2">She Kou Pier</option>
						<option value="SHE">Shenyang</option>
						<option value="SZX">Shenzhen</option>
						<option value="FW2">Shenzhen Pier</option>
						<option value="SJW">Shijiazhuang</option>
						<option value="FSZ">Shizuoka</option>
						<option value="SKT">Sialkot Int'l</option>
						<option value="REP">Siem Reap</option>
						<option value="KOS">Sihanoukville</option>
						<option value="SIN">Singapore</option>
						<option value="GBE">Sir Serestse</option>
						<option value="SPM">Spangdahlem</option>
						<option value="SPU">Split Airport</option>
						<option value="DGX">St Athan</option>
						<option value="STL">St.Louis</option>
						<option value="ARN">Stockholm</option>
						<option value="STR">Stuttgart</option>
						<option value="SZB">Subang</option>
						<option value="SFS">Subic Bay</option>
						<option value="PKU">Sultan S K II</option>
						<option value="SUB">Surabaya</option>
						<option value="SYD">Sydney</option>
						<option value="TUU">Tabuk</option>
						<option value="RMQ">Taichung</option>
						<option value="TNN">Tainan</option>
						<option value="TPE">Taipei</option>
						<option value="TSA">Taipei/TSA</option>
						<option value="TTT">Taitung</option>
						<option value="TYN">Taiyuan</option>
						<option value="TAK">Takamatsu</option>
						<option value="TAS">Tashkent</option>
						<option value="TBS">Tbilisi</option>
						<option value="THR">Tehran</option>
						<option value="TLV">Tel Aviv</option>
						<option value="TEV">Teruel</option>
						<option value="TSN">Tianjin</option>
						<option value="TIV">Tivat Airport</option>
						<option value="TKS">Tokushima</option>
						<option value="HND">Tokyo/HND</option>
						<option value="NRT">Tokyo/NRT</option>
						<option value="TOF">Tomsk</option>
						<option value="YYZ">Toronto</option>
						<option value="TOJ">Torrejon AFB</option>
						<option value="TTJ">Tottori</option>
						<option value="TLS">Toulouse</option>
						<option value="TZX">Trabzon Airport</option>
						<option value="TUN">Tunis</option>
						<option value="KRW">Turkmenbashy</option>
						<option value="UTH">Udon Thani</option>
						<option value="ULN">Ulaan Baatar</option>
						<option value="UUD">Ulan-Ude</option>
						<option value="URC">Urumqi</option>
						<option value="UTP">Utapao</option>
						<option value="YVR">Vancouver</option>
						<option value="THN">Vanersborg</option>
						<option value="VRN">verona</option>
						<option value="VIE">Vienna</option>
						<option value="VTE">Vientiane</option>
						<option value="VCP">Viracopos</option>
						<option value="VIT">VITORIA AIRPORT</option>
						<option value="VVO">Vladivostok</option>
						<option value="WXN">Wanzhou</option>
						<option value="WAW">Warsaw</option>
						<option value="DCA">Washington Nat.</option>
						<option value="IAD">Washington/IAD</option>
						<option value="WTB">Wellcamp Apt</option>
						<option value="WLG">Wellington</option>
						<option value="WNZ">Wenzhou</option>
						<option value="ILN">Wilmington</option>
						<option value="WUH">Wuhan</option>
						<option value="WUX">Wuxi</option>
						<option value="WUS">Wuyishan</option>
						<option value="XMN">Xiamen</option>
						<option value="SIA">Xian</option>
						<option value="XIY">Xian</option>
						<option value="XNN">Xining</option>
						<option value="JHG">Xishuangbanna</option>
						<option value="XUZ">Xuzhou</option>
						<option value="YNZ">Yancheng</option>
						<option value="RGN">Yangon</option>
						<option value="YNY">Yangyang</option>
						<option value="YTY">Yangzhou</option>
						<option value="YNT">Yantai</option>
						<option value="YIH">Yichang</option>
						<option value="INC">Yinchuan</option>
						<option value="YIW">Yiwu</option>
						<option value="OKO">Yokota</option>
						<option value="YGJ">Yonago</option>
						<option value="YCU">Yuncheng</option>
						<option value="UUS">YuzhnoSakhainsk</option>
						<option value="ZAM">Zamboanga</option>
						<option value="ZAZ">Zaragoza</option>
						<option value="ZHA">Zhanjiang</option>
						<option value="CGO">Zhengzhou</option>
						<option value="HSN">Zhoushan</option>
						<option value="ZUH">Zhuhai</option>
						<option value="ZYI">Zunyi</option>
						<option value="ZRH">Zurich</option>
								  </select>
								</div>
							</div>
							<div class="ctr">
								<label>Choose Date</label>
								<div class="input-group form-group">
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
										viewBox="0 0 19.023 19.023"> <defs>
									<style>
										.a {
											fill: none;
										}
										
										.b {
											fill: #fff;
										}
									</style>
									</defs> <g transform="translate(0 0)"> <path class="a"
										d="M0,0H19.023V19.023H0Z" /> <path class="b"
										d="M15.06,15.853H.793A.794.794,0,0,1,0,15.06V2.378a.794.794,0,0,1,.793-.793H3.963V0H5.548V1.585H10.3V0h1.585V1.585H15.06a.794.794,0,0,1,.793.793V15.06A.794.794,0,0,1,15.06,15.853ZM1.585,7.926v6.341H14.267V7.926Zm0-4.755V6.341H14.267V3.171H11.889V4.755H10.3V3.171H5.548V4.755H3.963V3.171Z"
										transform="translate(1.585 0.793)" /> </g> </svg>
									<input class="inputClass" type="text" placeholder="flight departure date" id="flightdate_datepicker" name="departureDate">
								    
								</div>
							</div>
							<div class="circle">
								<div class="search" onclick="searchFlights()">
									<svg xmlns="http://www.w3.org/2000/svg" width="28.535"
										height="28.535" viewBox="0 0 28.535 28.535"> <defs>
									<style>
										.a {
											fill: none;
										}
										
										.b {
											fill: #fff;
										}
									</style>
									</defs> <g transform="translate(0 0)"> <path class="a"
										d="M0,0H28.535V28.535H0Z" /> <path class="b"
										d="M22.47,24.152h0l-5.09-5.092A10.693,10.693,0,0,1,10.715,21.4H10.7a10.7,10.7,0,1,1,8.359-4.022l5.092,5.091-1.681,1.681ZM10.7,2.378a8.323,8.323,0,0,0,0,16.646h.012A8.254,8.254,0,0,0,16.5,16.675l.178-.178A8.324,8.324,0,0,0,10.7,2.378Z"
										transform="translate(2.378 2.378)" /> </g> </svg>
								</div>
							</div>
						</div>
					</div>
				</div>
</form>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>
