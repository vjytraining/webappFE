CREATE USER hkiaflightsdb IDENTIFIED BY hkiaflightsdbpassword DEFAULT TABLESPACE bigtbs_01 TEMPORARY TABLESPACE temp_demo QUOTA 50M on bigtbs_01;

GRANT create session TO hkiaflightsdb;
GRANT CREATE TABLE TO hkiaflightsdb;
GRANT create sequence TO hkiaflightsdb;

CREATE TABLE FLIGHT_STATUS (
id INTEGER NOT NULL,
airline_code            VARCHAR2 (3),
flight_number           VARCHAR2 (5),
departure_airport_Code  VARCHAR2 (5),
arrival_airport_code    VARCHAR2 (5),
aircraft_type           VARCHAR2 (50),
flight_status           VARCHAR2 (50),
scheduled_departure     date,
estimated_departure     date,
actual_departure        date,
scheduled_arrival       date,
estimated_arrival       date,
actual_arrival          date,
departure_gate          VARCHAR2(50),
arrival_gate            VARCHAR2(50)
);

insert into FLIGHT_STATUS (id, airline_code, flight_number, departure_airport_Code, arrival_airport_code, 
aircraft_type, flight_status, scheduled_departure, estimated_departure, actual_departure, scheduled_arrival, estimated_arrival,
actual_arrival, departure_gate, arrival_gate) values(1, 'CX', '8163', 'HKG', 'MEL', 'Boeing 777-300ER', 'Arrived', 
TO_DATE('19-Sep-2019 11:00:00', 'dd-MON-yyyy HH24:MI:SS'), TO_DATE('19-Sep-2019 11:00:00', 'dd-MON-yyyy HH24:MI:SS'), TO_DATE('19-Sep-2019 11:03:00', 'dd-MON-yyyy HH24:MI:SS'),
TO_DATE('19-Sep-2019 22:00:00', 'dd-MON-yyyy HH24:MI:SS'), TO_DATE('19-Sep-2019 22:10:00', 'dd-MON-yyyy HH24:MI:SS'), TO_DATE('19-Sep-2019 22:30:00', 'dd-MON-yyyy HH24:MI:SS'),
'Terminal T1 - 64','Terminal T2 - 16');