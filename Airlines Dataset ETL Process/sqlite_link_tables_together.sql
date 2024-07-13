use airlines;

# drop redundancy table 'seats'
DROP TABLE seats;


# Add primary key each table
ALTER TABLE aircrafts_data
ADD PRIMARY KEY (aircraft_code);

ALTER TABLE airports_data
ADD PRIMARY KEY (airport_code);

ALTER TABLE bookings
ADD PRIMARY KEY (book_ref);

ALTER TABLE flights
ADD PRIMARY KEY (flight_id);

ALTER TABLE tickets
ADD PRIMARY KEY (ticket_no);

# converting a column to a foreign key to the seats table that references the 
## aircraft_code column in the aircrafts_data.

ALTER TABLE flights
ADD CONSTRAINT fk_departure_airport
FOREIGN KEY (departure_airport) REFERENCES airports_data(airport_code);

ALTER TABLE flights
ADD CONSTRAINT fk_arrival_airport
FOREIGN KEY (arrival_airport) REFERENCES airports_data(airport_code);

ALTER TABLE boarding_passes
ADD CONSTRAINT fk_ticket_no_boarding
FOREIGN KEY (ticket_no) REFERENCES tickets(ticket_no);

ALTER TABLE boarding_passes
ADD CONSTRAINT fk_flight_no_boarding
FOREIGN KEY (flight_id) REFERENCES flights(flight_id);

ALTER TABLE ticket_flights
ADD CONSTRAINT fk_ticket_no_ticket
FOREIGN KEY (ticket_no) REFERENCES tickets(ticket_no);

ALTER TABLE ticket_flights
ADD CONSTRAINT fk_flight_no_ticket
FOREIGN KEY (flight_id) REFERENCES flights(flight_id);

ALTER TABLE tickets
ADD CONSTRAINT fk_booking_ref
FOREIGN KEY (book_ref) REFERENCES bookings(book_ref);

ALTER TABLE flights
ADD CONSTRAINT fk_aircraft_code2
FOREIGN KEY (aircraft_code) REFERENCES aircrafts_data(aircraft_code);

COMMIT;
