CREATE TABLE locations (
  dt timestamp NOT NULL DEFAULT NOW(),
  accuracy int DEFAULT NULL,
  altitude int DEFAULT NULL,
  battery_level int DEFAULT NULL,
  heading int DEFAULT NULL,
  description varchar(255) DEFAULT NULL,
  event varchar(255) DEFAULT NULL,
  latitude decimal(9,6) DEFAULT NULL,
  longitude decimal(9,6) DEFAULT NULL,
  radius int DEFAULT NULL,
  trig varchar(1) DEFAULT NULL,
  tracker_id varchar(255) DEFAULT NULL,
  epoch int DEFAULT NULL,
  vertical_accuracy int DEFAULT NULL,
  velocity float DEFAULT NULL,
  pressure decimal(9,6) DEFAULT NULL,
  connection varchar(1) DEFAULT NULL,
  topic varchar(255) NOT NULL,
  place_id int DEFAULT NULL,
  osm_id int DEFAULT NULL,
  display_name text DEFAULT NULL
);
CREATE INDEX accuracy_index ON locations(accuracy);
CREATE INDEX tracker_id ON locations(tracker_id, epoch);