DROP DATABASE IF EXISTS space_wonders;
CREATE DATABASE space_wonders;

\c space_wonders;

DROP IF EXISTS solar_system;

CREATE TABLE solar_system (
    id SERIAL PRIMARY KEY,
    planet_id SERIAL FOREIGN KEY (planet_id) REFERENCES,
    dimensions INTEGER NOT NULL,
    facts TEXT NOT NULL
)

DROP TABLE IF EXISTS planets;

CREATE TABLE planets (
    planet_id  SERIAL PRIMARY KEY,
    distanceFromSun INTEGER NOT NULL,
    radius INTEGER NOT NULL,
    history TEXT NOT NULL,
    coolFact TEXT NOT NULL,
    image TEXT NOT NULL
)

DROP TABLE IF EXISTS stars;

CREATE TABLE stars (
    star_id SERIAL PRIMARY KEY,
    starType TEXT NOT NULL,
    relative_size INTEGER NOT NULL,
    mass INTEGER NOT NULL,
    temperature INTEGER NOT NULL,
    coolFact TEXT NOT NULL,
    image TEXT NOT NULL
)

DROP TABLE IF EXISTS celestial_bodies;

CREATE TABLE celestial_bodies (
    bodyID INTEGER NOT NULL,
    objType TEXT NOT NULL,
    surfaceComposition TEXT NOT NULL,
    averageTemp INTEGER NOT NULL,
    coolFact TEXT NOT NULL,
    image TEXT NOT NULL
)


