# Project X - GraphHopper

## Description

This repository contains a custom configuration of the GraphHopper routing engine that is used in our project. The file `config-example.yml` contains our custom weigths to finding the best path to take with a bicycle.

## Installation

- Run `wget https://download.geofabrik.de/europe/portugal-latest.osm.pbf` in root to download the Portugal OSM data (305 MB).
- Run `./build.sh` in root to build an updated GraphHopper Docker image from its repository.

## Running Locally

- Run `sudo docker run -p 8989:8989 israelhikingmap/graphhopper:latest -i portugal-latest.osm.pbf --host 0.0.0.0` in root to launch GraphHopper loaded with the Portugal OSM data.
- GraphHopper should be running on http://localhost:8989.
