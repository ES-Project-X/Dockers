# Project X - GraphHopper

## Description

This repository contains a custom configuration of the GraphHopper routing engine that is used in our project. The file `config-example.yml` contains our custom weigths to finding the best path to take with a bicycle.

**Course:** Software Engineering (2023/2024).

## Installation

- Run `wget https://download.geofabrik.de/europe/portugal-latest.osm.pbf` in root to download the Portugal OSM data (305 MB).
- Run `./build.sh` in root to build an updated GraphHopper Docker image from its repository with our custom weights.

## Running Locally

- Run `docker run -p 8989:80 israelhikingmap/graphhopper:latest` to launch GraphHopper.
- GraphHopper should be running on http://localhost:8989.

## Push Docker Image to AWS ECR

- Run `./aws_ecr_push.sh` in root to authenticate the AWS CLI to the Elastic Container Repository (replace the ECR ID inside the script), and tag and push the GraphHopper Docker image to the repository.