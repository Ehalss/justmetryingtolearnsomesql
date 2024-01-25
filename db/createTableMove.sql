-- CREATE Statements --
-- Table: MOVE --

-- Check if the "move" table exists --

DROP TABLE IF EXISTS move CASCADE;

-- Creating table: move --

CREATE TABLE move (
  move_id INT PRIMARY KEY,
  availability VARCHAR(40) NOT NULL,
  start_date_and_time TIMESTAMP NOT NULL,
  end_date_and_time DATETIME
);