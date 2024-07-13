# converting a column to a foreign key to the seats table that references the 
## aircraft_code column in the aircrafts_data.
use airlines;

ALTER TABLE incident_aircraft
ADD CONSTRAINT fk_aircaft_code
FOREIGN KEY (aircaft_code) REFERENCES aircrafts_data(aircraft_code);

ALTER TABLE incident_aircraft
ADD CONSTRAINT fk_operator_id
FOREIGN KEY (operator_id) REFERENCES aircaft_operator(operator_id);

ALTER TABLE incident_aircraft
ADD CONSTRAINT fk_departure_country_id
FOREIGN KEY (departure_country_id) REFERENCES country(country_id);

ALTER TABLE incident_aircraft
ADD CONSTRAINT fk_destination_country_id
FOREIGN KEY (destination_country_id) REFERENCES country(country_id);

ALTER TABLE incident_aircraft
ADD CONSTRAINT fk_flight_type_id
FOREIGN KEY (flight_type_id) REFERENCES flight_type(flight_type_id);

### Incident table
ALTER TABLE incident
ADD CONSTRAINT fk_location_id
FOREIGN KEY (location_id) REFERENCES incident_location(location_id);

ALTER TABLE incident
ADD CONSTRAINT fk_damage_type_id
FOREIGN KEY (damage_type_id) REFERENCES aircaft_damage_type(damage_type_id);

ALTER TABLE incident
ADD CONSTRAINT fk_phase_id
FOREIGN KEY (phase_id) REFERENCES aircraft_phase(phase_id);

ALTER TABLE incident
ADD CONSTRAINT fk_incident_type_id
FOREIGN KEY (incident_type_id) REFERENCES incident_type(incident_type_id);

ALTER TABLE incident
ADD CONSTRAINT fk_incident_damage_id
FOREIGN KEY (incident_damage_id) REFERENCES incident_damage(incident_damage_id);

ALTER TABLE incident
ADD CONSTRAINT fk_incident_aircraft_id
FOREIGN KEY (incident_aircraft_id) REFERENCES incident_aircraft(incident_aircraft_id);

ALTER TABLE incident
ADD CONSTRAINT fk_date_id
FOREIGN KEY (date_id) REFERENCES date(date_id);

COMMIT;